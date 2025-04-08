{
  description = "Snow Flakes with Home Manager";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    zen-browser.url = "github:0xc000022070/zen-browser-flake";
    home-manager = {
      url = "github:nix-community/home-manager/master";
      # Ensure Home Manager uses the same nixpkgs as your configuration
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nvf.url = "github:notashelf/nvf";
  };

  outputs =
    {
      self,
      nixpkgs,
      home-manager,
      nvf,
      ...
    }@inputs:
    let
      lib = nixpkgs.lib;
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      nixosConfigurations = {
        Yor = lib.nixosSystem {
          specialArgs = { inherit inputs nvf; };
          inherit system;
          modules = [
            ./hosts/Yor/configuration.nix
            ./hosts/Yor/hardware-configuration.nix
          ];
        };
      };
    };
}
