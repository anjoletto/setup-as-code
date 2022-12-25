{ config, pkgs, ... }:
{
  users.users.user = {
    isNormalUser = true;
    extraGroups = [ "wheel" "audio" ];
    shell = pkgs.zsh ;
    packages = with pkgs; [
      # system
      xorg.xhost
      feh
      # utils
      wget
      playerctl
      pamixer
      magic-wormhole
      ansible
      gotop
      starship
      nushell
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
      devbox
      direnv
      cookiecutter
      lazygit
      # GUI applications
      lxqt.lxqt-policykit
      gtk3-x11
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
      zathura
      pinta
    ];
  };
}
