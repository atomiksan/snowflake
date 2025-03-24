{
  config,
  lib,
  pkgs,
  ...
}:

{
  # Enable gnupg
  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
  };
}
