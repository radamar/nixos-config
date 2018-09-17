{ ... }:
{
  boot.initrd.availableKernelModules = [ "uhci_hcd" "ehci_pci" "usb_storage" "sd_mod" ];

  boot.loader.grub.device = "/dev/disk/by-id/usb-hp_v150w_E6006CEE9C81A828-0:0";
  boot.loader.grub.splashImage = /wallpaper/background.png;

  networking.hostName = "rocketman";

  nix.buildCores = 1;
  nix.maxJobs = 1;
  nixpkgs.pkgs = import <nixpkgs> { system = "i686-linux"; };
  nixpkgs.system = "i686-linux";

  hardware.enableRedistributableFirmware = true;

  authorizedKeysFiles = [ "/etc/nixos/keys/home-admin" "/etc/nixos/keys/home-admin-unlimitedfreedom" ];
}
