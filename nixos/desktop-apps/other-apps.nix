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
      emacs-pgtk
      epy
      eza
      fd
      fzf
      fastfetch
      gcc
      ghostty
      go
      hyprpaper
      hyprcursor
      kdePackages.dolphin
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
      rofi
      rustup
      swww
      tmux
      unzip
      vscode
      wget
      wl-clipboard
      yazi
      zig
      zoxide
      #...
    ]
    ++ [
      # Required for hyprland cursor
      inputs.zen-browser.packages."${system}".default
      inputs.rose-pine-hyprcursor.packages.${pkgs.system}.default
    ];
}
