{
  config,
  pkgs,
  ...
}:

{
  imports = [
    ./fish.nix
    ./zsh.nix
  ];
}
