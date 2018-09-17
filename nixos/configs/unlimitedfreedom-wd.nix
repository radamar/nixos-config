{ pkgs, ... }:
{
  #imports = [
  #  /etc/nixos/configs/grub.nix
  #  /etc/nixos/configs/efi.nix
  #  /etc/nixos/configs/1920x1080.nix
  #];

  boot.initrd.luks.devices."home".device = "/dev/disk/by-uuid/1bc5c354-43ac-4e47-a05c-9b4ac51e2624";
  boot.initrd.luks.devices."storage".device = "/dev/disk/by-uuid/59e169d2-0098-43cf-83a6-d0de03ad8baf";
  boot.kernelPackages = pkgs.linuxPackages_latest;
  boot.loader.grub.device = "/dev/disk/by-id/usb-WD_My_Passport_25E1_57584B3145323636414E4357-0:0";

  nix.buildCores = 1;
  nix.maxJobs = 12;

  networking.hostName = "unlimitedfreedom";

  hardware.opengl.enable = true;
  hardware.opengl.extraPackages = with pkgs; [
    libGLU_combined
    vaapiVdpau
    libvdpau-va-gl
  ];

  services.openssh.authorizedKeysFiles = ["/etc/nixos/keys/home-admin"];

  nix.extraOptions = ''
    binary-caches-parallel-connections = 25
  '';

  networking.firewall = {
    enable = true;
    allowPing = false;
  };
  networking.extraHosts = ''
    127.0.0.1 localhost
    192.168.0.101 tomato
    192.168.0.110 rocketman
  '';

  i18n = {
    consoleColors = [
      "1a1a1a"
      "f92672"
      "a6e22e"
      "f4bf75"
      "66d9ef"
      "ae81ff"
      "a1efe4"
      "f8f8f2"
      "75715e"
      "cb4b16"
      "586e75"
      "657b83"
      "839496"
      "6c71c4"
      "93a1a1"
      "fdf6e3"
    ];
    consoleKeyMap = "us";
    defaultLocale = "en_US.UTF-8";
    supportedLocales = [ "all" ];
    inputMethod = {
      enabled = "ibus" ;
      ibus.engines = with pkgs.ibus-engines; [ anthy ];
    };
  };

  time.timeZone = "Asia/Kolkata";

  services.journald = {
    extraConfig = ''
        [Journal]
        SystemMaxUse=64M
    '';
  };
  services.dictd = {
    enable = true;
    DBs = with pkgs.dictdDBs; [
      wiktionary
    ];
  };
  services.xserver = {
    enable = true;
    layout = "us";
    videoDrivers = [ "amdgpu" "modesetting" ];
    desktopManager = {
      #default = "gnome3";
      gnome3.enable = true;
      #gnome3.wayland = true;
    };
    #displayManager.gdm.enable = true;
  };
  services.gnome3.sushi.enable = true;

  sound = {
    enable = true;
  };

  programs = {
    adb.enable = true;
    fish.enable = true;
    gnupg.agent.enable = true;
    qt5ct.enable = true;
    wireshark = { enable = true; package = pkgs.wireshark-gtk; };
  };

  hardware.pulseaudio.enable = true;

  system.nixos.stateVersion = "18.03";
}
