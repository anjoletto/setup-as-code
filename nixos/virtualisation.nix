{ config, ... }:
{
  # -------------------------------------------------------------------------- #
  # docker
  # -------------------------------------------------------------------------- #
  #virtualisation.docker.enable = true;
  #users.extraGroups.docker.members = [ "user" ];
  virtualisation.podman = {
    enable = true;
    dockerCompat = true;
    defaultNetwork.dnsname.enable = true;
  };
  # -------------------------------------------------------------------------- #

  # -------------------------------------------------------------------------- #
  # lxc + lxd
  # -------------------------------------------------------------------------- #
  virtualisation.lxc = {
    enable = true;
    lxcfs.enable = true;
  };
  virtualisation.lxd = {
    enable = true;
    recommendedSysctlSettings = true;
  };
  users.extraGroups.lxd.members = [ "user" ];
  # -------------------------------------------------------------------------- #

  # -------------------------------------------------------------------------- #
  # virtualbox
  # -------------------------------------------------------------------------- #
  virtualisation.virtualbox.host.enable = true;
  users.extraGroups.vboxusers.members = [ "user" ];
  # -------------------------------------------------------------------------- #
}
