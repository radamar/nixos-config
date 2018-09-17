{ pkgs, ... }:
{
  imports = [
    ./grub.nix
    ./efi.nix
    ./1920x1080.nix
    ./nix.nix
    ./networking.nix
    ./ryzen1600.nix
    ./uf.nix
    ./wd.nix
    ./jp-kb.nix
    ./rx570.nix
    ./sudo.nix
    ./services.nix
    ./programs.nix
    ./unbound.nix
    ./environment.nix
    ./guix-daemon.nix
    ./emacs-daemon.nix
    ./squid-privoxy-tor.nix
    #./proxy.nix
    #./fonts.nix
    #./openssh.nix
    #./nginx.nix
    #./dynamicdns.nix
    #./printing.nix
    #./sane.nix
  ];

  i18n.consoleColors = [
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
  
  i18n.consoleKeyMap = "us";
  i18n.defaultLocale = "en_US.UTF-8";
  i18n.supportedLocales = [ "all" ];
  
  time.timeZone = "Asia/Kolkata";

  sound.enable = true;

  hardware.pulseaudio.enable = true;

  system.stateVersion = "18.03";
}
