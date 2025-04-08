{ 
  pkgs, 
  ... 
}: {
  #Install direnv
  programs.direnv = {
    loadInNixShell = true;
    nix-direnv = {
      enable = true;
    };
  };
}
  

