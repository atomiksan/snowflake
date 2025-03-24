{
  config,
  lib,
  pkgs,
  ...
}:

{
  # Install required nerd fonts
  fonts.packages = with pkgs; [
    noto-fonts-cjk-sans
    source-han-sans
    source-han-serif
    nerd-fonts.jetbrains-mono
    nerd-fonts.monaspace
    nerd-fonts.caskaydia-cove
    nerd-fonts.symbols-only
    nerd-fonts.victor-mono
  ];
}
