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
      theme = "rose-pine";
      font-size = 12;
      background-opacity = 0.7;
    };
  };
}
