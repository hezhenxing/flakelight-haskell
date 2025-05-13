{
  description = "Flake of Haskell project";
  inputs.flakelight.url = "github:nix-community/flakelight";
  outputs = {flakelight, ...}:
    flakelight ./. {
      imports = [flakelight.flakelightModules.flakelightModule];
      flakelightModule = _: {
        imports = [./flakelight-haskell.nix];
      };
    };
}
