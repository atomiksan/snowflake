{
  config,
  lib,
  pkgs,
  ...
}:

{
  #Enable bluetooth
  hardware.bluetooth.enable = true;

  #Install bluetooth utilities
  services.blueman.enable = true;

}
