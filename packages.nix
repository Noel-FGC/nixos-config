{ lib, pkgs, config, inputs, ... }:

{

  services.blueman.enable = true;

  services.flatpak.enable = true; # this is physically painful

  #nixpkgs.config.allowUnfree = true;
 
  nixpkgs.config.allowUnfreePredicate = pkg:
    builtins.elem (lib.getName pkg) [
      "steam"
      "steam-original"
      "steam-unwrapped"
      "steam-run"
      "spotify"
    ];

  programs = {
    gamemode.enable = true;
    gamescope.enable = true;
    steam = {
      #enable = true; # configured per user
      remotePlay.openFirewall = true;
      #dedicatedServer.openFirewall = true;
      localNetworkGameTransfers.openFirewall = true;
    };
    hyprland = {
      enable = true;
      xwayland.enable = true;
    };
    zsh.enable = true;
  };


 environment.systemPackages = with pkgs; [
    neovim
    git
    plocate
    unzip
    gparted
    ncdu 
    #flatpak
  ];
}

