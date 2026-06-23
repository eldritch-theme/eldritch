#!/usr/bin/env bash
set -euo pipefail
# ---------------------------------------------------------------------------
# minify-svg.sh
# Optimizes and minifies all SVG files in the current directory, removing
# comments, metadata, and unnecessary whitespace.
# Requires scour (pip install scour).
# ---------------------------------------------------------------------------

# Verify scour is available
if ! command -v scour &>/dev/null; then
    echo "Error: 'scour' is not installed or not in PATH." >&2
    echo "       Install it with: pip install scour" >&2
    exit 1
fi

theme_path="$(pwd)"
processed=0
failed=0

while IFS= read -r -d '' svg_file; do
    rel="${svg_file#"${theme_path}/"}"

    # Skip already-minified files
    [[ "$rel" == *.min.svg ]] && continue

    tmp_file="${svg_file}.tmp"

    if scour \
        --enable-viewboxing \
        --enable-id-stripping \
        --enable-comment-stripping \
        --shorten-ids \
        --indent=none \
        --strip-xml-prolog \
        --remove-metadata \
        -i "$svg_file" \
        -o "$tmp_file" \
        2>/dev/null; then
        orig_size="$(wc -c < "$svg_file")"
        min_size="$(wc -c < "$tmp_file")"
        mv -- "$tmp_file" "$svg_file"
        echo "  Optimized ${rel} (${orig_size}B → ${min_size}B)"
        (( processed++ )) || true
    else
        echo "  Warning: scour failed on ${rel}; leaving file unchanged." >&2
        rm -f "$tmp_file"
        (( failed++ )) || true
    fi
done < <(find "$theme_path" -type f -name "*.svg" -print0)

echo "  SVG optimization complete: ${processed} file(s) optimized, ${failed} skipped."