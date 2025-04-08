{ 
  pkgs, 
  ... 
}: {
  #Install direnv
  programs.direnv = {
    package = pkgs.direnv;
    silent = false;
    loadInNixShell = true;
    nix-direnv = {
      enable = true;
      package = pkgs.nix-direnv;
    };
  };
}
  

