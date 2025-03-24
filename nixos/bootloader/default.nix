{
  config,
  lib,
  pkgs,
  ...
}:

{
  imports = [
    ./bootloader.nix
  ];
}
