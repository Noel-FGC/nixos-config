{ pkgs, ... }:

{
  home.packages = with pkgs; [
    (pkgs.writeShellApplication {
        name = "TranscodeMB";
        runtimeInputs = with pkgs; [ ffmpeg ];
        text = builtins.readFile ./TranscodeMB.sh;
     })
  ];
}
