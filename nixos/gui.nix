{ config, pkgs, ... }:
{
  # -------------------------------------------------------------------------- #
  environment.pathsToLink = ["/libexec"];
  programs.dconf.enable = true;
  services.autorandr.enable = true;
  # -------------------------------------------------------------------------- #

  # -------------------------------------------------------------------------- #
  # xserver, x11, window manager, etc
  # -------------------------------------------------------------------------- #
  services.xserver = {
    enable = true;

    #desktopManager = { xterm.enable = false; };
    displayManager = { defaultSession = "none+i3"; };

    windowManager.i3.enable = true;

    layout = "us";
    xkbVariant = "altgr-intl";
    xkbOptions = "ctrl:nocaps";

    exportConfiguration = true;
  };

  nixpkgs.config = {
    packageOverrides = pkgs: rec {
      polybar = pkgs.polybar.override {
        i3GapsSupport = true;
	alsaSupport = true;
	pulseSupport = true;
      };
    };
  };

  #services.picom.enable = true;
  # -------------------------------------------------------------------------- #

  # -------------------------------------------------------------------------- #
  # xserver packages
  # -------------------------------------------------------------------------- #
  #services.flatpak.enable = true;

  xdg.portal.enable = true;
  xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-gtk ];

  systemd.user.services."dunst" = {
    enable = true;
    wantedBy = [ "default.target" ];
    serviceConfig.Restart = "always";
    serviceConfig.ExecStart = "${pkgs.dunst}/bin/dunst";
  };
  # -------------------------------------------------------------------------- #


  # -------------------------------------------------------------------------- #
  # hardware configurations
  # -------------------------------------------------------------------------- #
  services.xserver.libinput = {
    enable = true;
    mouse.middleEmulation = true;
    mouse.scrollButton = 8;
    mouse.scrollMethod = "button";
    touchpad.disableWhileTyping = true;
    touchpad.sendEventsMode = "disabled-on-external-mouse";
  };
  # -------------------------------------------------------------------------- #

  # -------------------------------------------------------------------------- #
  # fonts
  # -------------------------------------------------------------------------- #
  fonts = {
    fontDir.enable = true;
    enableGhostscriptFonts = true;
    fonts = with pkgs; [
      fira
      fira-mono
      fira-code
      fira-code-symbols
      font-awesome
      nerdfonts
      unicode-emoji
      noto-fonts-emoji
    ];
  };
  # -------------------------------------------------------------------------- #

}
