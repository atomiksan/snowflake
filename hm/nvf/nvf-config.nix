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
        vimALias = true;
     
        theme = {
          enable = true;
          name = "rose-pine-dawn";
        };

        languages = {
          enableLSP = true;
          enableTreesitter = true;

          nix.enable = true;
          rust.enable = true;
          go.enable = true;
          python.enable = true;
        };
        
        statusline.lualine.enable = true;
        telescope.enable = true;
        autocomplete.nvim-cmp.enable = true;
        formatter.conform-nvim.enable = true;
      };
    };
  };
}
