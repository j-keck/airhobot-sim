let
  fetchNixpkgs = {rev, sha256}: builtins.fetchTarball {
    url = "https://github.com/NixOS/nixpkgs-channels/archive/${rev}.tar.gz";
    inherit sha256;
  };

  pkgs = import (fetchNixpkgs {
    rev = "8a9807f1941d046f120552b879cf54a94fca4b38";
    sha256 = "0s8gj8b7y1w53ak138f3hw1fvmk40hkpzgww96qrsgf490msk236";
  }) {};

  # nix-prefetch-git https://github.com/justinwoo/easy-purescript-nix
  easy-ps = import (pkgs.fetchFromGitHub {
    owner = "justinwoo";
    repo = "easy-purescript-nix";
    rev = "17d40cef56527d3d337f136d2dbc5514f7742470";
    sha256 = "0smi1rzdgiwjbrbcnfmq4an0snimxsr9x2kwkic4irwnm9c8wa1d";
  }) { inherit pkgs; };

  buildInputs =
    (with pkgs; [ dhall nodejs utillinux]) ++
    (with pkgs.nodePackages; [ parcel-bundler node2nix ]) ++
    (with easy-ps; [ purs spago spago2nix ]);

  airhobot-sim =
    let
        # nix-shell --run 'spago2nix generate'
        app = (import ./spago-packages.nix { inherit pkgs; }).mkBuildProjectOutput {
          src = pkgs.nix-gitignore.gitignoreSource [] ./.;
          purs = easy-ps.purs;
        };

        # nix-shell --run 'node2nix -c node_modules.nix --nodejs-12'
        node_modules = (import ./node_modules.nix { inherit pkgs; }).package;

    in pkgs.stdenv.mkDerivation rec {
      name = "airhobot-sim";
      version = "0.0.0";
      inherit buildInputs;
      src = pkgs.symlinkJoin {
        name = "src";
        paths = [
          "${app}"
          "${node_modules}/lib/node_modules/airhobot-sim"
        ];
      };
      phases = "buildPhase";
      buildPhase = ''
        mkdir -p $out
        parcel build --out-dir $out/ ${src}/index.html
      '';
  };

in
if pkgs.lib.inNixShell then pkgs.mkShell {
  inherit buildInputs;
  shellHooks = ''
    alias serv="parcel serve --host 0.0.0.0 index.html"
  '';
} else {
  inherit airhobot-sim;
}
