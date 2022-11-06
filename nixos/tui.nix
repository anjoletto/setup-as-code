{ config, pkgs, ... }:
{
  # -------------------------------------------------------------------------- #
  # i18n and input configuration
  # -------------------------------------------------------------------------- #
  i18n.defaultLocale = "en_US.UTF-8";
  console = {
    font = "Lat2-Terminus16";
    keyMap = "emacs2";
  };
  # -------------------------------------------------------------------------- #

  # -------------------------------------------------------------------------- #
  # packages configuration
  # -------------------------------------------------------------------------- #
  nixpkgs.overlays = [

    (self: super: {
      neovim = super.neovim.override {
        viAlias = true;
	vimAlias = true;
	};
      }
    )
  ];

  security.doas = {
    enable = true;
    extraConfig = ''
    permit :wheel
    permit nopass user cmd light
    '';
  };

  programs.light.enable = true;
  programs.zsh.enable = true;
  # -------------------------------------------------------------------------- #
}
