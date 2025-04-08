{
  config,
  pkgs,
  ...
}:

{
  #Ghostty config
  programs.ghostty = {
    enable = true;
    enableFishIntegration = true;
    enableZshIntegration = true;
    installBatSyntax = true;
    installVimSyntax = true;
    settings = {
      theme = "rose-pine-dawn";
      command = "fish";
      font-family = "JetBrainsMono Nerd Font";
      font-size = 12;
      background-opacity = 0.85;
    };
  };
}
