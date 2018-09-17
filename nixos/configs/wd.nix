{ ... }:
{

  boot.initrd.luks.devices."wd_home".device = "/dev/disk/by-uuid/1bc5c354-43ac-4e47-a05c-9b4ac51e2624";
  boot.initrd.luks.devices."wd_storage".device = "/dev/disk/by-uuid/59e169d2-0098-43cf-83a6-d0de03ad8baf";

}