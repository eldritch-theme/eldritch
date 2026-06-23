#!/usr/bin/env bash
set -euo pipefail

# ---------------------------------------------------------------------------
# Configuration
# ---------------------------------------------------------------------------
PREFIX="oomox-"
THEMES_DIR="${HOME}/.cache/.themes"
SCRIPT_DIR="$(pwd)"
ASSETS_DIR="${SCRIPT_DIR}/assets"
PATCHES_DIR="${SCRIPT_DIR}/patches"
SCRIPTS_DIR="${SCRIPT_DIR}/scripts"

# ---------------------------------------------------------------------------
# Sanity checks
# ---------------------------------------------------------------------------
if [[ ! -d "$THEMES_DIR" ]]; then
    echo "Error: themes directory '$THEMES_DIR' does not exist." >&2
    exit 1
fi

if [[ ! -d "$ASSETS_DIR" ]]; then
    echo "Error: assets directory '$ASSETS_DIR' does not exist." >&2
    exit 1
fi

# ---------------------------------------------------------------------------
# Helpers
# ---------------------------------------------------------------------------

# remove_files <theme_path> <remove_conf>
#   Reads literal relative paths (one per line) from <remove_conf> and removes
#   each one. Blank lines and lines starting with # are ignored.
remove_files() {
    local theme_path="$1"
    local conf="$2"

    while IFS= read -r pattern || [[ -n "$pattern" ]]; do
        [[ -z "$pattern" || "$pattern" == \#* ]] && continue
        echo "  Removing ${pattern}"
        rm -f "${theme_path}/${pattern}"
    done < "$conf"
}

# copy_assets <theme_path> <theme_assets_dir>
#   Copies every file under <theme_assets_dir> into <theme_path>, preserving
#   relative paths. Skips remove.conf and README.md at the top level.
copy_assets() {
    local theme_path="$1"
    local theme_assets_dir="$2"

    while IFS= read -r -d '' src_file; do
        local rel="${src_file#"${theme_assets_dir}/"}"

        [[ "$rel" == "remove.conf" ]] && continue
        [[ "$rel" == "README.md"   ]] && continue

        local dest="${theme_path}/${rel}"
        echo "  Copying ${rel} → ${dest#"${THEMES_DIR}/"}"
        mkdir -p "$(dirname "$dest")"
        cp -- "$src_file" "$dest"
    done < <(find "$theme_assets_dir" -type f -print0)
}

# apply_patches <new_name>
#   Recursively scans patches/ for every .patch file whose diff headers
#   reference this theme, then applies each one with patch -p1.
#   Skips README.md and hidden files.
apply_patches() {
    local new_name="$1"
    local applied=0

    shopt -s nullglob globstar
    for patch_file in "${PATCHES_DIR}"/**/*.patch; do
        local base
        base="$(basename "$patch_file")"
        [[ "$base" == .* ]] && continue

        if grep -qE "^(---|\+\+\+) [ab]/${new_name}/" "$patch_file"; then
            echo "  Applying patch ${patch_file#"${PATCHES_DIR}/"}"
            patch -p1 --forward --no-backup --directory="${THEMES_DIR}" --input="$patch_file"
            (( applied++ )) || true
        fi
    done

    if [[ $applied -eq 0 ]]; then
        echo "  No patches found for '${new_name}'; skipping patch step."
    fi
}

# run_scripts <theme_path> <new_name>
#   Runs every executable file under scripts/<new_name>/, in sorted order,
#   with the theme directory as the working directory.
#   Skips hidden files and README.md.
run_scripts() {
    local theme_path="$1"
    local new_name="$2"
    local theme_scripts_dir="${SCRIPTS_DIR}/${new_name}"
    local ran=0

    [[ ! -d "$theme_scripts_dir" ]] && {
        echo "  No scripts directory found for '${new_name}'; skipping."
        return
    }

    while IFS= read -r -d '' script; do
        local base
        base="$(basename "$script")"
        [[ "$base" == .* ]]        && continue
        [[ "$base" == "README.md" ]] && continue
        [[ ! -x "$script" ]]       && {
            echo "  Skipping ${base} (not executable)"
            continue
        }

        echo "  Running ${base}"
        ( cd "$theme_path" && "$script" )
        (( ran++ )) || true
    done < <(find "$theme_scripts_dir" -maxdepth 1 -type f -print0 | sort -z)

    if [[ $ran -eq 0 ]]; then
        echo "  No executable scripts found for '${new_name}'; skipping."
    fi
}

# run_global_scripts <theme_path>
#   Runs every executable .sh file directly under scripts/, in sorted order,
#   with the theme directory as the working directory.
#   Skips hidden files and README.md.
run_global_scripts() {
    local theme_path="$1"
    local ran=0

    while IFS= read -r -d '' script; do
        local base
        base="$(basename "$script")"
        [[ "$base" == .* ]]        && continue
        [[ "$base" == "README.md" ]] && continue
        [[ ! -x "$script" ]]       && {
            echo "  Skipping global ${base} (not executable)"
            continue
        }

        echo "  Running global ${base}"
        ( cd "$theme_path" && "$script" )
        (( ran++ )) || true
    done < <(find "$SCRIPTS_DIR" -maxdepth 1 -type f -name "*.sh" -print0 | sort -z)

    if [[ $ran -eq 0 ]]; then
        echo "  No global scripts found in scripts/; skipping."
    fi
}

# ---------------------------------------------------------------------------
# Main loop
# ---------------------------------------------------------------------------
shopt -s nullglob
processed=0

for theme_path in "${THEMES_DIR}"/*/; do
    theme_path="${theme_path%/}"
    folder_name="$(basename "$theme_path")"

    if [[ "$folder_name" != "${PREFIX}"* ]]; then
        echo "Skipping '${folder_name}' (no '${PREFIX}' prefix)."
        continue
    fi

    new_name="${folder_name#"${PREFIX}"}"
    new_path="${THEMES_DIR}/${new_name}"

    echo "══════════════════════════════════════════"
    echo "Processing: ${folder_name}  →  ${new_name}"

    # ------------------------------------------------------------------
    # 1. Rename folder (strip prefix)
    # ------------------------------------------------------------------
    mv -- "$theme_path" "$new_path"
    theme_path="$new_path"

    theme_assets_dir="${ASSETS_DIR}/${new_name}"

    # ------------------------------------------------------------------
    # 2. Remove files listed in remove.conf (if present)
    # ------------------------------------------------------------------
    remove_conf="${theme_assets_dir}/remove.conf"
    if [[ -f "$remove_conf" ]]; then
        echo "  Reading removals from ${remove_conf#"${SCRIPT_DIR}/"}"
        remove_files "$theme_path" "$remove_conf"
    else
        echo "  No remove.conf found for '${new_name}'; skipping removals."
    fi

    # ------------------------------------------------------------------
    # 3. Copy asset files into the theme (everything except remove.conf)
    # ------------------------------------------------------------------
    if [[ -d "$theme_assets_dir" ]]; then
        echo "  Copying assets from ${theme_assets_dir#"${SCRIPT_DIR}/"}"
        copy_assets "$theme_path" "$theme_assets_dir"
    else
        echo "  No assets directory found for '${new_name}'; skipping copies."
    fi

    # ------------------------------------------------------------------
    # 4. Apply patches (any .patch in patches/ that touches this theme)
    # ------------------------------------------------------------------
    if [[ -d "$PATCHES_DIR" ]]; then
        apply_patches "$new_name"
    else
        echo "  No patches directory found; skipping patch step."
    fi

    # ------------------------------------------------------------------
    # 5. Run per-theme scripts
    # ------------------------------------------------------------------
    if [[ -d "$SCRIPTS_DIR" ]]; then
        run_scripts "$theme_path" "$new_name"
    else
        echo "  No scripts directory found; skipping script step."
    fi

    # ------------------------------------------------------------------
    # 5b. Run global scripts (scripts/*.sh, applied to every theme)
    # ------------------------------------------------------------------
    if [[ -d "$SCRIPTS_DIR" ]]; then
        run_global_scripts "$theme_path"
    fi

    # ------------------------------------------------------------------
    # 6. Archive with apack
    # ------------------------------------------------------------------
    archive="${THEMES_DIR}/${new_name}.tar.gz"
    echo "  Archiving → ${archive#"${THEMES_DIR}/"}"
    ( cd "${THEMES_DIR}" && apack "$archive" "$new_name" )

    echo "  Done: ${new_name}.tar.gz"
    (( processed++ )) || true
done

echo "══════════════════════════════════════════"
echo "Finished. Processed ${processed} theme(s)."