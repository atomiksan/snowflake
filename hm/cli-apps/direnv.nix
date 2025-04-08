{
  config,
  pkgs,
  ...
}:

{
  #Direnv config
  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
    enableBashIntegration = true;
    enableZshIntegration = true;
  };
}
