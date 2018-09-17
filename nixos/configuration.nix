# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
  [ 
    ./hardware-configuration.nix
    ./configs/intel-boot-drive.nix
    ./configs/unlimitedfreedom.nix
    ./configs/ext_hdd1.nix
  ];
  
  users.mutableUsers = false;
  users.defaultUserShell = pkgs.bash;
  users.users.user = {
    isNormalUser = true;
    uid = 1000;
    home = "/home/user";
    description = "Hacking on NixOS";
    extraGroups = [
      "wheel"
      "audio"
      "video"
      "network"
      "adbusers"
    ];
    #hashedPassword is the output of mkpasswd -m sha-512
    hashedPassword = "";
  };
  
  users.users.root = {
    hashedPassword = "";
  };
}
