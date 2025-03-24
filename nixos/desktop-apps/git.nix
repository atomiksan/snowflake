{
  config,
  lib,
  pkgs,
  ...
}:

{
  # Install git
  programs.git = {
    enable = true;
  };
}
