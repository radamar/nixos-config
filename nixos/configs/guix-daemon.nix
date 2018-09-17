{ lib, ... }:

let
  makeGuixBuilder = name:
  { isSystemUser = true;
    group = "guixbuild";
    extraGroups = [ "guixbuild" "kvm" ];
    description = "Guix Build user ${name}";
  };
in
{
  users.groups.guixbuild = { name = "guixbuild"; };
  users.users = builtins.listToAttrs (map (x: {name = "guixbuild${toString x}"; value = makeGuixBuilder "guixbuild${toString x}"; }) (lib.range 0 11) );

  systemd.services.guix-daemon = {
    enable = true;
    description = "Build daemon for GNU Guix";
    serviceConfig = {
      ExecStart = "/var/guix/profiles/per-user/root/guix-profile/bin/guix-daemon --build-users-group=guixbuild";
      Environment = "GUIX_LOCPATH=/root/.guix-profile/lib/locale";
      RemainAfterExit = "yes";
      StandardOutput = "syslog";
      StandardError = "syslog";
      TasksMax = "8192";
    };
    wantedBy = [ "multi-user.target" ];
  };
}
