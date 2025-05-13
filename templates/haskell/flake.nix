{
  description = "Flake for Haskell Application.";
  inputs.flakelight-haskell.url = "github:nix-community/flakelight-haskell";
  outputs = {flakelight-haskell, ...}: flakelight-haskell ./. {};
}
