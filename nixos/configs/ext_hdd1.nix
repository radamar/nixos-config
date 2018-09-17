{ ... }:
{
  imports = [
    ./wd.nix
  ];
  
  fileSystems."/wd" = {
    device = "/dev/disk/by-uuid/349c27d8-6d99-4eb1-a6a8-5170d9a0f16d";
    options = ["nofail"];
    fsType = "ext4";
  };

  fileSystems."/wd/home" = {
    device = "/dev/mapper/wd_home";
    options = ["nofail"];
    fsType = "ext4";
  };

  fileSystems."/wd/home/storage" = {
    device = "/dev/mapper/wd_storage";
    options = ["nofail"];
    fsType = "ext4";
  };
}