{
  inputs.flakelight-haskell.url = "github:hezhenxing/flakelight-haskell";
  outputs = {flakelight-haskell, ...}: flakelight-haskell ./. {};
}
