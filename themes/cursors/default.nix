{ lib
, stdenvNoCC
, inkscape
, xcursorgen
, python3
, zip
, callPackage
}:

let
  palette = ./palettes/eldritch-cthulhu.json;
  paletteData = builtins.fromJSON (builtins.readFile palette);
  allAccents = builtins.attrNames paletteData.accents;

  buildEldritchCursor = { accents, pname, version ? "1.0.0" }:
    stdenvNoCC.mkDerivation {
      inherit pname version;

      src = lib.fileset.toSource {
        root = ./.;
        fileset = lib.fileset.intersection
          (lib.fileset.fromSource (lib.sources.cleanSource ./.))
          (lib.fileset.unions [
            ./src
            ./scripts
            ./palettes
            ./build
            ./AUTHORS
          ]);
      };

      nativeBuildInputs = [
        python3
        inkscape
        xcursorgen
        zip
      ];

      postPatch = ''
        patchShebangs scripts/
      '';

      buildPhase = ''
        runHook preBuild

        export HOME="$TMPDIR"
        python3 scripts/generate-cursors "${palette}" ${builtins.toString accents}
        for theme in svgs/eldritch-*-cursors; do
          name=$(basename "$theme")
          mkdir -p "pngs/$name" "hl/$name" "dist/$name"
          bash scripts/build-cursors \
            "$theme" \
            "$PWD/pngs/$name" \
            "$PWD/hl/$name" \
            "$PWD/dist/$name"
          cp AUTHORS "dist/$name/" 2>/dev/null || true
          cp "$theme/index.theme" "dist/$name/"
          cp "$theme/manifest.hl" "dist/$name/"
        done

        runHook postBuild
      '';

      installPhase = ''
        runHook preInstall
        mkdir -p "$out/share/icons"
        for theme in dist/eldritch-*-cursors; do
          cp -r "$theme" "$out/share/icons/"
        done
        runHook postInstall
      '';

      meta = {
        description = "${paletteData.label} cursor theme — based on Volantes Cursors";
        homepage = "https://github.com/eldritch-theme/cursors";
        license = lib.licenses.gpl3Only;
        platforms = lib.platforms.linux;
      };
    };
in
  {
    default = buildEldritchCursor {
      accents = allAccents;
      pname = "eldritch-cursors";
    };
  }
  // builtins.listToAttrs (map (accent: {
    name = accent;
    value = buildEldritchCursor {
      accents = [accent];
      pname = "eldritch-${accent}-cursors";
    };
  }) allAccents)
