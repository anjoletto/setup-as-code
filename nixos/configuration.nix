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
      ./custom.nix
    ];

  system.stateVersion = "22.11";
}

