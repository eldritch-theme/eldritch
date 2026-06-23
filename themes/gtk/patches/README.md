# patches/

`.patch` files applied to themes during packaging.

Patches are matched to a theme by scanning their diff headers (`---`/`+++` lines) for the unprefixed theme name. Any `.patch` file whose headers reference `<theme_name>/` is applied automatically with `patch -p1`. Organize freely into subdirectories as the entire tree is scanned recursively.