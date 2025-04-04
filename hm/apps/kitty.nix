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
    font.size = 12;
    shellIntegration = {
      enableFishIntegration = true;
      enableZshIntegration = true;
    };
    themeFile = "rose-pine";
    settings = {
      background_opacity = 0.7;
      confirm_os_window_close = 0;
      shell = "fish";
    };
  };
}
