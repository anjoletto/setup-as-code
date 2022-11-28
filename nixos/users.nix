{ config, pkgs, ... }:
{
  users.users.user = {
    isNormalUser = true;
    extraGroups = [ "wheel" "audio" ];
    shell = pkgs.zsh ;
    packages = with pkgs; [
      # system
      xorg.xhost
      # utils
      wget
      playerctl
      pamixer
      magic-wormhole-rs
      ansible
      gotop
      # programming
      gitAndTools.gh
      silver-searcher
      python310
      python310Packages.bpython
      nodePackages.pyright
      pipenv
      black
      lua53Packages.lua
      clang
      gcc
      nodejs
      tree-sitter
      detox
      yarn
      # GUI applications
      lxqt.lxqt-policykit
      gtk3-x11
      xidlehook
      polybar
      sxhkd
      i3lock
      arandr
      alacritty
      pcmanfm
      maim
      pavucontrol
      dunst
      rofi
      networkmanager
      networkmanagerapplet
      qutebrowser
      librewolf
      brave
      unicode-emoji
      spotify
      discord
      authy
    ];
  };
}
