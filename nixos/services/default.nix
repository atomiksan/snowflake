{
  config,
  lib,
  pkgs,
  ...
}:

{
  imports = [
    ./ssh.nix
    ./cups.nix
    ./audio.nix
    ./bluetooth.nix
    ./emacs.nix
    ./virtualization.nix
    ./xserver.nix
  ];
}
