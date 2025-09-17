{
  config,
  lib,
  pkgs,
  inputs,
  ...
}:

{
  #Add libvirtd packages and enable virtualization
  virtualisation.libvirtd.enable = true;
  
  #Add virt manager package
  programs.virt-manager.enable = true;

  #Enable docker
  virtualisation.docker = {
    enable = true;
  };

}
