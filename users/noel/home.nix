{ pkgs, inputs, ... }:


let
  envvars = {
    #GTK_THEME = "adw-gtk3-dark";
    EDITOR = "nvim";
    NIXOS_OZONE_WL = 1;
  };
in
{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "noel";
  home.homeDirectory = "/home/noel";

  # ideally this would be in zsh.nix but i have no fucking idea how to pass the variable to it and i cant be fucked to figure it out rn
  programs.zsh.sessionVariables = envvars;
  imports = [
	  inputs.nix4nvchad.homeManagerModule
	  inputs.nix-flatpak.homeManagerModules.nix-flatpak
    inputs.stylix.homeManagerModules.stylix
    # try not to enable packages in their configs, instead enable them in packages.nix
    ./packages.nix
    ./configs/hyprland/hyprland.nix
    ./configs/zsh/zsh.nix
    ./configs/nvim/nvim.nix
    ./configs/stylix/stylix.nix
    ./configs/lf/lf.nix
    ./bin/bin.nix
  ];
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "24.11"; # Please read the comment before changing.

  # The home.packages option allows you to install Nix packages into your
  # environment.

  programs.obs-studio = {
    plugins = with pkgs.obs-studio-plugins; [
      input-overlay
      obs-shaderfilter
      obs-vkcapture
    ];
  };

  home.file = {
    ".local/bin".source = ./bin;
  };

  home.sessionVariables = envvars;

  gtk = {
    enable = true;
    cursorTheme = {
      name = "Bibata-Modern-Classic";
      package = pkgs.bibata-cursors;
    };
     #theme = { # now configured with stylix
     #  name = "adw-gtk3-dark";
     #  package = pkgs.adw-gtk3;
     #};
  };


  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}

