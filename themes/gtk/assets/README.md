# assets/

Per-theme files to copy into each theme after the prefix is stripped.

Each subdirectory must match the unprefixed theme name (e.g. `assets/mytheme/`). Every file inside is copied verbatim into the theme directory, preserving relative paths except for `remove.conf` and `README.md` at the top level of each subdirectory.

## remove.conf

Optionally place a `remove.conf` inside a theme's subdirectory to list files that should be deleted from the theme before assets are copied. One relative path per line; `#` comments and blank lines are ignored.