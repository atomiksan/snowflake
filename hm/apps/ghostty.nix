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
      font-size = 13.5;
      background-opacity = 0.7;
    };
  };
}
