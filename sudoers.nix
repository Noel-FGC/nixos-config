{ config, pkgs, ... }:

{
  security.sudo = {
    enable = true;
    extraConfig = "Defaults rootpw";
    extraRules = [{
      commands = [

        {
          command = "${pkgs.systemd}/bin/systemctl suspend";
          options = [ "NOPASSWD" ];
      	}
	{
	  command = "${pkgs.systemd}/bin/reboot";
	  options = [ "NOPASSWD" ];
	}
	{
	  command = "${pkgs.systemd}/bin/poweroff";
	  options = [ "NOPASSWD" ];
	}
      ];
      groups = [ "wheel" ];
    }];
  };
}
