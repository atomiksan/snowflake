{
  config,
  lib,
  pkgs,
  ...
}:

{
  # Install neovim
  programs.neovim = {
    enable = true;
  };
}
