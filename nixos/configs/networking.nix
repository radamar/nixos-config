{...}:
{
  networking.firewall.enable = true;
  networking.firewall.allowPing = false;
  networking.extraHosts = ''
    127.0.0.1 localhost
    192.168.0.101 tomato
  '';
  networking.hostName = "unlimitedfreedom";
}