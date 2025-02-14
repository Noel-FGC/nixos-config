{ pkgs, ... }:

{
  stylix = {
    enable = true;
    image = pkgs.fetchurl {
      url = "https://github.com/czechbol/tokyonight-backgrounds/blob/main/operating-systems/1920x1080/nix-snowflake.png?raw=true";
      sha256 = "0jrhxnxfqcs4fslk9qiw53y48h5i4p622xz3a8y49b676zqifil6";
    };
    polarity = "dark";
    base16Scheme = "${pkgs.base16-schemes}/share/themes/tokyodark.yaml";
    fonts = {
      monospace = {
       package = pkgs.nerd-fonts.jetbrains-mono;
       name = "JetBrainsMono Nerd Font";
      };

      emoji = {
        package = pkgs.noto-fonts-emoji;
        name = "Noto Color Emoji";
      };
    };
    targets = {
      kitty.enable = true;
      hyprpaper.enable = true;
    };
    opacity = {
      terminal = 0.6;
      applications = 0.6;
    };
    iconTheme = {
      enable = true;
      dark = "Arc";
      #name = "Arc";
      package = pkgs.arc-icon-theme;
    };
    cursor = {
      name = "Bibata-Modern-Classic";
      package = pkgs.bibata-cursors;
      size = 24;
    };
  };
}
