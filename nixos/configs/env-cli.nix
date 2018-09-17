{ pkgs, ... }:
{
  environment = {
    variables = { EDITOR = "vim"; };
    systemPackages = with pkgs; [
      vim
      git
      htop
      iotop
    ];
  };
}
