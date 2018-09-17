{pkgs, ...}:
{
  hardware.opengl.enable = true;
  hardware.opengl.extraPackages = with pkgs; [
    libGLU_combined
    vaapiVdpau
    libvdpau-va-gl
  ];
}