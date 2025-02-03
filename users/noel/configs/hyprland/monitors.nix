{
  wayland.windowManager.hyprland.settings = {
    monitor = [
      ",preferred,auto,auto"
      "DP-1,1920x1080,3840x0,1"
      "DP-2,1920x1080,1920x0,1"
      "HDMI-A-1,1920x1080,0x0,1"
      "HDMI-A-2,1920x1080,0x0,1,mirror,DP-2"
    ];
    workspace = [
      # idk how list generation works i stole the workspace bind code from the hyprland wiki
      "1,monitor:DP-1"
      "2,monitor:DP-1"
      "3,monitor:DP-1"
      "4,monitor:DP-1"
      "5,monitor:DP-1"
      "6,monitor:DP-1"
      "7,monitor:DP-1"
      "8,monitor:DP-1"
      "9,monitor:DP-1"
      
      "10,monitor:DP-1" # multiples of 10 wont be used but its nice for readability

      "11,monitor:DP-2"
      "12,monitor:DP-2"
      "13,monitor:DP-2"
      "14,monitor:DP-2"
      "15,monitor:DP-2"
      "16,monitor:DP-2"
      "17,monitor:DP-2"
      "18,monitor:DP-2"
      "19,monitor:DP-2"
      
      "20,monitor:DP-2"
      
      "21,monitor:HDMI-A-1"
      "22,monitor:HDMI-A-1"
      "23,monitor:HDMI-A-1"
      "24,monitor:HDMI-A-1"
      "25,monitor:HDMI-A-1"
      "26,monitor:HDMI-A-1"
      "27,monitor:HDMI-A-1"
      "28,monitor:HDMI-A-1"
      "29,monitor:HDMI-A-1"
      ];

  };
}
