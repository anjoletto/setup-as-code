{ config, ... }:
{
  # -------------------------------------------------------------------------- #
  # base configuration
  # -------------------------------------------------------------------------- #
  networking.enableIPv6 = false;
  networking.nameservers = ["1.1.1.1" "1.0.0.1"];
  # -------------------------------------------------------------------------- #

  # -------------------------------------------------------------------------- #
  # use network manager
  # -------------------------------------------------------------------------- #
  networking.networkmanager.enable = true;
  programs.nm-applet.enable = true;
  users.extraGroups.networkmanager.members = [ "user" ];
  # -------------------------------------------------------------------------- #

  # -------------------------------------------------------------------------- #
  # use wpa supplicant
  # -------------------------------------------------------------------------- #
  #networking.wireless.enable = true;
  # -------------------------------------------------------------------------- #

}
