{
  config,
  lib,
  pkgs,
  ...
}:

{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.loid = {
    isNormalUser = true;
    description = "Loid";
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
    shell = pkgs.fish;
    packages = with pkgs; [
      #  thunderbird
    ];
  };
}
