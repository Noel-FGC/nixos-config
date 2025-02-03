{ pkgs, inputs, ... }:

{
    home-manager = {
      extraSpecialArgs = { inherit inputs; };
      users."noel".imports = [
	    ./home.nix
      ];
    };

    users.users.noel = {
    isNormalUser = true;
    description = "Noel";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.zsh;
    packages = with pkgs; [];
  };
}

