{
  config,
  lib,
  pkgs,
  ...
}:

{
  # Install fish shell
  programs.fish.enable = true;

  # Install zsh shell
  programs.zsh.enable = true;
}
