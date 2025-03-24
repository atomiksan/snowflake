{
  config,
  lib,
  pkgs,
  ...
}:

{
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    bat
    discord
    direnv
    emacs
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
    nixfmt-rfc-style
    pavucontrol
    ripgrep
    rustup
    tmux
    unzip
    wget
    wl-clipboard
    zed-editor
    zls
    zoxide
    #...
  ];
}
