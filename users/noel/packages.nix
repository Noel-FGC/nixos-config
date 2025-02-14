{ pkgs, inputs, ... }:

{
  home.packages = with pkgs; [

    # misc packages

    kdenlive
    atlauncher
    fastfetch
    nautilus
    vesktop
    blueberry
    bemenu
    wl-clipboard
    thefuck
    hyprsome
    pulsemixer
    gimp
    grimblast
    wine
    cartridges
    spotify
    ffmpeg
    hyprlock
    steam
    mangohud
    easyeffects
    playerctl
    mission-center
    mpv
    silicon
    hyprpicker
    lazygit
    hyprprop
    base16-schemes
    ripgrep
    p7zip
    xxd

    # fonts
    nerd-fonts.caskaydia-cove
    comfortaa

    # flake inputs

    inputs.zen-browser.packages.x86_64-linux.beta
  ];

  services.dunst.enable = true;  
  programs.obs-studio.enable = true;
  programs.kitty.enable = true;
  programs.lf.enable = true;
  programs.zsh.enable = true;
  services.hyprpaper.enable = true;
  services.hypridle.enable = true;
  programs.hyprlock.enable = true;
  programs.nvchad.enable = true;
  wayland.windowManager.hyprland.enable = true;

  # flatpaks, someone kill me now, also declarative-flatpak kept breaking trust me i would be using it if i could
  services.flatpak = {
    update.auto = {
      enable = true;
      onCalendar = "weekly";
    };
    remotes = [
      {
        name = "flathub";
	      location = "https://dl.flathub.org/repo/flathub.flatpakrepo";
      }
      {
	      name = "sober";
	      location = "https://sober.vinegarhq.org/repo/";
      }
      {
	      name = "launcher.moe"; # github:ezKEa/aagl-gtk-on-nix is BROKEN i HATE it why is so much shit broken, anyway i'll figure it out at some point cause i dont want to fucking use flatpaks
	      location = "https://gol.launcher.moe/gol.launcher.moe.flatpakrepo";
      }
    ];

    packages = [
      {
	      appId = "org.vinegarhq.Sober";
	      origin = "sober";
      }
      {
	      appId = "org.gnome.Platform//45";
	      origin = "flathub";
      }
      {
	      appId = "moe.launcher.the-honkers-railway-launcher";
	      origin = "launcher.moe";
      }
      {
	      appId = "moe.launcher.sleepy-launcher";
	      origin = "launcher.moe";
      }
      {
	      appId = "org.gtk.Gtk3theme.adw-gtk3-dark";
	      origin = "flathub";
      }
    ];
    #overrides = {
    #  global = {
	  #    Environment = {
	  #      GTK_THEME = "adw3-gtk-dark";
	  #    };
    #  }; 
    #};  #configured with stylix?
  };
}
