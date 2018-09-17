{pkgs, ...}:
{
  programs = {
    adb.enable = true;
    gnupg.agent.enable = true;
    qt5ct.enable = true;
    wireshark = { enable = true; package = pkgs.wireshark-gtk; };
  };
}