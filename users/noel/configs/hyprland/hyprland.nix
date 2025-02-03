{
  imports = [
    ./monitors.nix
    ./binds.nix
    ./appearance.nix
    ./rules.nix
    ./autostart.nix
  ];
  wayland.windowManager.hyprland.settings = {
    "$Term" = "kitty";
    "$Filemanager" = "nautilus";
    "$Runner" = "bemenu-run";
    general = {
      "layout" = "master";
    };
    input = {
      "sensitivity" = "-1";
      "follow_mouse" = "1";
      "mouse_refocus" = "false";
    };
    master = {
      "new_on_top" = "true";
      "new_status" = "master";
    };
  };
}
