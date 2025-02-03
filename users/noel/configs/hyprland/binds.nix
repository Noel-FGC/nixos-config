{
  wayland.windowManager.hyprland.settings = {
    bindm = [
      "Super, mouse:272, movewindow"
      "Super, mouse:273, resizewindow"
    ];
    bindl = [
      ", XF86AudioPlay, exec, playerctl play-pause"
      ", XF86AudioPrev, exec, playerctl previous"
      ", XF86AudioNext, exec, playerctl next"
      ", XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
    ];
    bindle = [
      ", XF86AudioRaiseVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"
      ", XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
    ];
    bind = [
      "ALT_SHIFT, return, exec, $Term"
      "Super, S, exec, $Runner"
      "Super, E, exec, $Filemanager,"
      "Super, M, exit,"
      "Super, F, togglefloating,"
      "Alt, F4, killactive,"
      "Super_Shift, F, fullscreen, 0"
      "Super, G, exec, [fullscreen] cartridges"
      "Super, B, exec, missioncenter"
      "Super, L, exec, hyprlock"
      "Super_Alt, F4, exec, hyprctl kill"
      "Super_Shift, S, exec, grimblast copy area"
      "Super_Alt, S, exec, grimblast copy output"
      ]
      ++ (
	builtins.concatLists (builtins.genList (i:
	  let ws = i + 1;
	  in [
	    "Super, code:1${toString i}, exec, hyprsome workspace ${toString ws}"
	    "Super_Shift, code:1${toString i}, exec, hyprsome movefocus ${toString ws}"
	    "Super_Alt, code:1${toString i}, exec, hyprsome move ${toString ws}"
	  ]
	)
        9)
      );
  };
}
