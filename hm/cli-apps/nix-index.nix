{ 
  config, 
  pkgs, 
  ... 
}:

{
  # Nix index
  programs.nix-index = {
    enable = true;
    enableBashIntegration = true;
    enableZshIntegration = true;
    enableFishIntegration = true;
  };
}
