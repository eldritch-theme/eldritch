#!/usr/bin/env bash
set -euo pipefail

# ---------------------------------------------------------------------------
# minify-css.sh
# Optimizes and minifies all CSS files in the theme directory, removing
# comments and whitespace. Requires cssmin (pip install cssmin).
# ---------------------------------------------------------------------------

# Verify cssmin is available
if ! command -v cssmin &>/dev/null; then
    echo "Error: 'cssmin' is not installed or not in PATH." >&2
    echo "       Install it with: pip install cssmin" >&2
    exit 1
fi

theme_path="$(pwd)"
processed=0
failed=0

while IFS= read -r -d '' css_file; do
    rel="${css_file#"${theme_path}/"}"

    # Skip already-minified files
    [[ "$rel" == *.min.css ]] && continue

    tmp_file="${css_file}.tmp"

    if cssmin < "$css_file" > "$tmp_file"; then
        orig_size="$(wc -c < "$css_file")"
        min_size="$(wc -c < "$tmp_file")"
        mv -- "$tmp_file" "$css_file"
        echo "  Minified ${rel} (${orig_size}B → ${min_size}B)"
        (( processed++ )) || true
    else
        echo "  Warning: cssmin failed on ${rel}; leaving file unchanged." >&2
        rm -f "$tmp_file"
        (( failed++ )) || true
    fi
done < <(find "$theme_path" -type f \( -name "*.css" -o -name "*.scss" \) -print0)

echo "  CSS minification complete: ${processed} file(s) minified, ${failed} skipped."