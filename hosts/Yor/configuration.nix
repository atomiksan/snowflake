{
  config,
  lib,
  pkgs,
  inputs,
  ...
}:

{
  # Import the required config files here
  imports = [
    ../../nixos

    # Import Home Manager's NixOS module
    inputs.home-manager.nixosModules.home-manager
    #{
    #  home-manager.useGlobalPkgs = true;
    #  home-manager.useUserPackages = true;
    #}
  ];

  home-manager.users.loid = {
    # Import your modular Home Manager configuration:
    imports = [ ../../home.nix ];

    # Optionally add more Home Manager settings here:
    # You can also set other options, e.g.:
    # home.sessionVariables = { ... };
  };

  # Enable flakes
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
    "pipe-operators"
  ];

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "25.05"; # Did you read the comment?
}
