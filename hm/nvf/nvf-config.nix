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
          shiftwidth = 2;
          tabstop = 2;
          showmode = false;
        };
        
        binds = {
          whichKey.enable = true;
        };

        navigation.harpoon = {
          enable = true;
        };

        languages = {
          enableLSP = true;
          enableDAP = true;
          enableFormat = true;
          enableTreesitter = true;

          clang.enable = true;
          nix.enable = true;
          rust.enable = true;
          go.enable = true;
          python.enable = true;
        };
        
        utility = {
          oil-nvim.enable = true;
        };
        
        useSystemClipboard = true;
        visuals.nvim-web-devicons.enable = true;
        autopairs.nvim-autopairs.enable = true;
        statusline.lualine= {
          enable = true;
          componentSeparator = {
            left = "";
            right = "";
          };
          sectionSeparator = {
            left = "";
            right = "";
          };
        };
        telescope.enable = true;
        autocomplete.nvim-cmp.enable = true;
        formatter.conform-nvim.enable = true;
      };
    };
  };
}
