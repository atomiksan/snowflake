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
      command = "fish";
      font-family = "Victor Mono Nerd Font";
      font-style = "Victor Mono Nerd Font SemiBold";
      font-size = 12;
      background-opacity = 0.7;
    };
  };
}
