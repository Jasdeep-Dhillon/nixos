{ ... }:
{
  flake.nixosModules.lain = {
    networking.networkmanager.enable = true;
    networking.hostName = "lain";
  };
}
