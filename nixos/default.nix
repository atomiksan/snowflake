{
  config,
  lib,
  pkgs,
  ...
}:

{
  imports = [
    ./bootloader
    ./desktop-apps
    ./os-config
    ./services
    ./users
  ];
}
