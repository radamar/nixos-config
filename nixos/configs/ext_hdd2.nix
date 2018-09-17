{ ... }:
{
  imports = [
    ./uf.nix
  ];
  
  fileSystems."/ssd" = {
    device = "/dev/disk/by-uuid/dev/disk/by-uuid/607e5cbf-ee36-4002-956b-c7ed4811a96c";
    options = ["nofail"];
    fsType = "ext4";
  };

  fileSystems."/ssd/home" = {
    device = "/dev/mapper/home";
    options = ["nofail"];
    fsType = "ext4";
  };
}