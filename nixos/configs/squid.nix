{ ... }:
{
  services.squid = {
    enable = true;
    proxyPort = 3128;
    extraConfig = ''
      acl ip_localhost src 127.0.0.1/24
      acl ip_localnet src 192.168.0.1/24
      http_access allow ip_localhost
      http_access allow ip_localnet
      http_access deny all
      shutdown_lifetime 10 seconds
      #cache_mem 100 MB
      visible_hostname kereberos
      #maximum_object_size 10 MB
    '';
  };
  networking.firewall.allowedTCPPorts = [ 3128 ];
  networking.firewall.allowedUDPPorts = [ 3128 ];
}
