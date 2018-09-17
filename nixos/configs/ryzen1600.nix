{pkgs, ...}:
{
  imports = [
    
  ];
  nix.maxJobs = 12;
  nix.buildCores = 1;

  boot.kernelPackages = pkgs.linuxPackages_latest;
}