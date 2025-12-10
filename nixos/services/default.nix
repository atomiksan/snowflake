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
    #./nfs.nix
    ./virtualization.nix
    ./xserver.nix
  ];
}
