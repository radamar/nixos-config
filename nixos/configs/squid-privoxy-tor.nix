{ ... }:
{
  imports = [
    ./tor-daemon.nix
    ./privoxy.nix
    ./squid.nix
  ];
  services.privoxy = {
    extraConfig = ''
        forward-socks5t / 127.0.0.1:9050 .
        forward 192.168.*.*/ .
        forward 127.*.*.*/ .
        forward localhost/ .
    '';
    listenAddress = "127.0.0.1:8118";
  };
  services.squid = {
    extraConfig = ''
        cache_peer 127.0.0.1 parent 8118 7 no-query no-digest
        never_direct allow all
        acl ip_ftp proto FTP
        always_direct allow ip_ftp
    '';
  };
}
