{
  description = "Cursor theme factory — generate cursor themes from any color palette";

  nixConfig = {
    extra-substituters = ["https://neonvoidx.cachix.org"];
    extra-trusted-public-keys = ["neonvoidx.cachix.org-1:nHFGhvzWqULuNWFbuPwTP0eUW+k7utl0chxXhUJhU1Y="];
  };

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
  };

  outputs = inputs @ {flake-parts, ...}:
    flake-parts.lib.mkFlake {inherit inputs;} {
      systems = ["x86_64-linux" "aarch64-linux"];
      perSystem = {pkgs, ...}: let
        inherit (pkgs) lib;

        paletteFile = ./palettes/eldritch-cthulhu.json;
        paletteData = builtins.fromJSON (builtins.readFile paletteFile);
        allAccents = builtins.attrNames paletteData.accents;

        buildCursorTheme = {
          accents,
          pname,
          version ? "1.0.0",
        }: let
          accentArg = builtins.toString accents;
        in
          pkgs.stdenv.mkDerivation {
            inherit pname version;
            src = ./.;

            nativeBuildInputs = with pkgs; [
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
              python3 scripts/generate-cursors "${paletteFile}" ${accentArg}
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

            meta = with lib; {
              description = "${paletteData.label} cursor theme";
              homepage = "https://github.com/eldritch-theme/cursors";
              license = licenses.gpl3Only;
              platforms = platforms.linux;
              maintainers = [];
            };
          };
      in {
        packages =
          {
            default = buildCursorTheme {
              accents = allAccents;
              pname = "eldritch-cursors";
            };
          }
          // builtins.listToAttrs (map (accent: {
            name = accent;
            value = buildCursorTheme {
              accents = [accent];
              pname = "eldritch-${accent}-cursors";
            };
          }) allAccents);

        devShells.default = pkgs.mkShell {
          packages = with pkgs; [
            python3
            inkscape
            xcursorgen
            just
          ];
          shellHook = ''
            echo "cursor-factory dev shell"
            echo "  nix build .#<variant>  — build a single variant"
            echo "  nix build .#default    — build all variants"
            echo ""
            echo "Variants:"
            ${builtins.concatStringsSep "\n" (map (a: "echo \"  • ${a}\"") allAccents)}
          '';
        };
      };
    };
}
