{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ./system.nix
      ./packages.nix
      ./nixos.nix
      ./sound.nix
      ./bluetooth.nix
      ./network.nix
      ./gui.nix
      ./tui.nix
      ./virtualisation.nix
      ./users.nix
    ];

  networking.hostName = "sandbox";
  system.stateVersion = "22.11";
}

