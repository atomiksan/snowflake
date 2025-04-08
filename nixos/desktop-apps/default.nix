{
  config,
  lib,
  pkgs,
  ...
}:

{
  imports = [
    ./git.nix
    ./gpg.nix
    ./direnv.nix
    ./nix-ld.nix
    ./neovim.nix
    ./firefox.nix
    ./shells.nix
    ./other-apps.nix
  ];
}
