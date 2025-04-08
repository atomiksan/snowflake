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
      cmake
      discord
      emacs-gtk
      epy
      eww
      eza
      fd
      fzf
      fastfetch
      gcc_multi
      ghostty
      gnumake
      go
      kitty
      libgcc
      mpv
      nil
      nitch
      nix-index
      nixfmt-rfc-style
      nodejs
      ripgrep
      rustup
      shfmt
      shellcheck
      tmux
      unzip
      wget
      wl-clipboard
      zed-editor
      zls
      zoxide
      #...
    ]
    ++ [
      # Required for hyprland cursor
      inputs.zen-browser.packages."${system}".default
    ];
}
