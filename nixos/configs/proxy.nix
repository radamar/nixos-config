{ ... }:
{
  networking.proxy = {
    #allProxy = "http://127.0.0.1:3128";
    #default = "http://127.0.0.1:3128";
    httpProxy = "http://127.0.0.1:3128";
    httpsProxy = "http://127.0.0.1:3128";
  };
}
