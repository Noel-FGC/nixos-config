{
  wayland.windowManager.hyprland.settings = {
    general = {
      "gaps_in" = "5";
      "gaps_out" = "15";
      "border_size" = "2";
    #  "col.active_border" = "0x00000000";
    #  "col.inactive_border" = "0x00000000"; # configured by stylix
    };

    decoration = {
      "rounding" = "15";
      blur = {
	  "enabled" = "true";
	  "size" = "3";
	  "passes" = "3";
	};
    };

    animations = {
      "enabled" = "true";
      "bezier" = "mybezier, 0.05, 0.9, 0.1, 1.05";

      animation = [
        "windows, 1, 6, default, slide"
	"windowsOut, 1, 6, default, slide"
	"border, 1, 10, default"
	"borderangle, 1, 8, default"
	"fade, 1, 1, default"
	"workspaces, 1, 6, default"
      ];
    };
    
  };
}
