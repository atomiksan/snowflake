{
  config,
  lib,
  pkgs,
  ...
}:

{
  # Set Neovim as CLI editor
  environment.variables.EDITOR = "nvim";

  # Set Emacs as Visual editor
  environment.variables.VISUAL = "emacs";
}
