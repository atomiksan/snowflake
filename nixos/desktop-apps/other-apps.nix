{
  config,
  lib,
  pkgs,
  inputs,
  ...
}:

{
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages =
    with pkgs;
    [
      bat
      discord
      dunst
      emacs-gtk
      epy
      eza
      fd
      fzf
      fastfetch
      ghostty
      go
      hyprpaper
      hyprcursor
      kitty
      libgcc
      libnotify
      lazygit
      mpv
      nil
      nitch
      nix-index
      nixfmt-rfc-style
      nodejs
      ripgrep
      rofi-wayland
      rustup
      swww
      tmux
      unzip
      wget
      wl-clipboard
      yazi
      zls
      zoxide
      #...
    ]
    ++ [
      # Required for hyprland cursor
      inputs.zen-browser.packages."${system}".default
      inputs.rose-pine-hyprcursor.packages.${pkgs.system}.default
    ];
}
