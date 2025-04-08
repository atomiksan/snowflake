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
    themeFile = "rose-pine-dawn";
    settings = {
      background_opacity = 0.85;
      confirm_os_window_close = 0;
      shell = "fish";
    };
  };
}
