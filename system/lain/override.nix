{ ... }:
{
  flake.nixosModules.lain =
    {
      config,
      pkgs,
      lib,
      ...
    }:

    {
      hardware = {
        graphics.extraPackages = with pkgs; [ intel-media-driver ];
        nvidia = {
          open = lib.mkForce false;
          package = config.boot.kernelPackages.nvidiaPackages.legacy_580;
          powerManagement.enable = lib.mkForce false;
          nvidiaPersistenced = true;
          prime = {
            intelBusId = "PCI:0:2:0";
            nvidiaBusId = "PCI:1:0:0";
            offload = {
              enable = true;
              enableOffloadCmd = true;
            };
          };
        };
        enableAllFirmware = true;
      };
      services.hardware.openrgb.enable = true;
      powerManagement.enable = true;
    };
}
