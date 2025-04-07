{
  config,
  lib,
  pkgs,
  ...
}:

{
  # Enable emacs service
  services.emacs = {
    enable = true;
    package = pkgs.emacs-gtk;
  };
}
