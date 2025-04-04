{
  config,
  pkgs,
  ...
}:

{
  imports = [
    ./eza.nix
    ./fzf.nix
    ./git.nix
    ./omp.nix
    ./starship.nix
    ./tmux.nix
    ./zoxide.nix
  ];
}
