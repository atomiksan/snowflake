{
  config,
  pkgs,
  ...
}:

{
  #Kitty config
  programs.kitty = {
    enable = true;
    font.name = "Victor Mono Nerd Font";
    font.size = 13;
    shellIntegration = {
      enableFishIntegration = true;
      enableZshIntegration = true;
    };
    themeFile = "rose-pine";
  };
}
