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
    ./emacs.nix
    ./xserver.nix
  ];
}
