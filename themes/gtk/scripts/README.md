# scripts/

Scripts executed against each theme directory during packaging.

## Global scripts

Any executable `*.sh` file placed directly in `scripts/` runs for **every** theme, with the theme directory as the working directory.

## Per-theme scripts

Executable files inside a subdirectory named after the theme (e.g. `scripts/mytheme/`) run only for that theme, also from within the theme directory. Any file type is supported; files are run in sorted order.

Hidden files and `README.md` are always skipped.