# flakelight-haskell

Haskell module for flakelight.

Initializes a Haskell project flake from package.yaml.

## Get started

To create a new project in an empty directory:

```shell
nix flake init -t github:hezhenxing/flakelight-haskell
```

And then you can rename the package name from `example` to your `COOL-NAME`:

```shell
sed -i 's/example/COOL-NAME/' package.yaml
```
