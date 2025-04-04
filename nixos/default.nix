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
    ./hyprland
    ./os-config
    ./services
    ./users
  ];
}
