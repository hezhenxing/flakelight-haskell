{
  config,
  lib,
  src,
  ...
}: let
  inherit (lib) mkMerge;
in {
  config = mkMerge [
    {
      package = pkgs:
        pkgs.haskellPackages.developPackage {
          root = src;
          modifier = drv:
            pkgs.haskell.lib.addBuildTools drv (with pkgs; [
              cabal-install
              ghcid
              haskell-language-server
              hpack
            ]);
        };
    }
  ];
}
