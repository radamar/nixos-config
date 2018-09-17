{...}:
{
  services.journald = {
    extraConfig = ''
        [Journal]
        SystemMaxUse=64M
    '';
  };
  services.xserver = {
    enable = true;
    layout = "us";
    videoDrivers = [ "amdgpu" "modesetting" ];
    desktopManager.gnome3.enable = true;
    
  };
  services.gnome3.sushi.enable = true;
}