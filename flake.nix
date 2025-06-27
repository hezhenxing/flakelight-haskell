{
  description = "Flake of Haskell project";
  inputs.flakelight.url = "github:nix-community/flakelight";
  outputs = {flakelight, ...}:
    flakelight ./. {
      imports = [flakelight.flakelightModules.extendFlakelight];
      flakelightModule = _: {
        imports = [./flakelight-haskell.nix];
      };
    };
}
