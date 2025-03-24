{
  config,
  lib,
  pkgs,
  ...
}:

{
  imports = [
    ./env.nix
    ./fonts.nix
    ./locales.nix
    ./networking.nix
  ];
}
