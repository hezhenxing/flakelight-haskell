{
  description = "Flake of Haskell project";
  inputs.flakelight.url = "github:nix-community/flakelight";
  outputs = {flakelight, ...}:
    flakelight ./. {
      flakelightModule = _: {
        imports = [./haskell.nix];
      };
    };
}
