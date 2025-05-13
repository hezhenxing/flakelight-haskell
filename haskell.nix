{
  config,
  lib,
  flakelight,
  ...
}: let
  inherit (lib) mkOption mkIf mkMerge;
in {
  config = mkMerge [
    {
      devShell.packages = pkgs:
        with pkgs; [
          cabal-install
          haskell-language-server
          ghcid
        ];
    }
  ];
}
