{ config, pkgs, ...}:
{
  # -------------------------------------------------------------------------- #
  # enable unfree stuff
  # -------------------------------------------------------------------------- #
  hardware.enableAllFirmware = true;
  nixpkgs.config.allowUnfree = true;
  # -------------------------------------------------------------------------- #

  # -------------------------------------------------------------------------- #
  # set boot configuration
  # -------------------------------------------------------------------------- #
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  #boot.kernelPackages = pkgs.linuxPackages_latest;
  boot.kernelPackages = pkgs.linuxPackages_zen;
  # -------------------------------------------------------------------------- #

  # -------------------------------------------------------------------------- #
  # other configurations
  # -------------------------------------------------------------------------- #
  zramSwap.enable = true;
  time.timeZone = "America/Sao_Paulo";
  powerManagement.enable = true;
  # -------------------------------------------------------------------------- #
}
