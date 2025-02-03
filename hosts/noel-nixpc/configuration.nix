{
  imports = [
    ./hardware-configuration.nix
  ];
  networking.hostName = "noel-nixpc";
  boot.initrd.kernelModules = [ "amdgpu" ];

  hardware = {
    graphics = {
      enable = true;
      enable32Bit = true;
    };
    amdgpu.amdvlk = {
      enable = true;
      support32Bit.enable = true;
    };
  };


}
