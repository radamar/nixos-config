{ pkgs, ... }:
{
  fonts = {
    enableFontDir = true;
    fonts = with pkgs; [
      source-han-serif-japanese
      source-han-serif-simplified-chinese
      powerline-fonts
    ];
    fontconfig.defaultFonts = {
      monospace = [ "Liberation Mono for Powerline" ];
      sansSerif = [ "Liberation Sans" ];
      serif = [ "Liberation Serif" ];
    };
  };
  #If grub2 ? enabled
  #boot.loader.grub.font = "/run/current-system/sw/share/X11-fonts/LiberationMono-Regular.ttf";
}
