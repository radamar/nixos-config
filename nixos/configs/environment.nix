{ pkgs, ... }:
{
  environment = {
    systemPackages = with pkgs; [
      git
      mkpasswd
      ldns
      binutils-unwrapped
      openssl
      ntfs3g
      lm_sensors
      radeontop

      nix-prefetch-scripts

      nixops
      bind

      sakura
                  
      zathura
      mpv
      firefox
      
      uget
      hexchat
      qbittorrent
      qtox
      
      tagainijisho
      blender
      gimp
      inkscape
      audacity

      materia-theme
      papirus-icon-theme

      #celestia
      #stellarium
      #minetest
      #superTuxKart
      #voxelands

      calibre
      xoscope
      gcolor3
      qtpass
      
      darcs
    ];
  };
}
