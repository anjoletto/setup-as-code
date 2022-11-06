{ config, pkgs, ... }:
{
  nixpkgs.config.permittedInsecurePackages = [
    "electron-9.4.4"
  ];

  environment.systemPackages = with pkgs; [
    acpi
    usbutils
    haskellPackages.iwlib
    tree
    psutils
    lm_sensors
    p7zip
    unzip
    exa
    bat
    fd
    procs
    ripgrep
    fzf
    sd
    du-dust
    hyperfine
    ncdu_2
    neovim
    tmux
    git
  ];
}
