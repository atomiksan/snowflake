{
  config,
  pkgs,
  ...
}:

{
  programs.nvf = {
    enable = true;
    settings = {
      vim = { 
        theme = {
          enable = true;
          name = "rose-pine";
          style = "dawn";
        };
        
        options = {
          shiftwidth = 4;
          tabstop = 4;
        };
        
        binds = {
          whichKey.enable = true;
        };

        navigation.harpoon = {
          enable = true;
        };

        languages = {
          enableLSP = true;
          enableTreesitter = true;

          nix.enable = true;
          rust.enable = true;
          go.enable = true;
          python.enable = true;
        };
        
        utility = {
          oil-nvim.enable = true;
        };
        
        autopairs.nvim-autopairs.enable = true;
        mini.statusline.enable = true;
        telescope.enable = true;
        autocomplete.nvim-cmp.enable = true;
        formatter.conform-nvim.enable = true;
      };
    };
  };
}
