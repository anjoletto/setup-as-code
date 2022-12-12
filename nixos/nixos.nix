{ config, ... }:
{
  nix.settings.auto-optimise-store = true;

  system.autoUpgrade = {
    enable = true;
    allowReboot = false;
    dates = "12:00";
  };
  
  nix.gc = {
    automatic = true;
    options = "--delete-older-than 7d";
    dates = "12:30";
  };
}
