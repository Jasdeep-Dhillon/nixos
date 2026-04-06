{ self, inputs, ... }:
{
  flake.nixosConfigurations.legion = inputs.nixpkgs.lib.nixosSystem {
    modules = [
      self.nixosModules.base

      self.nixosModules.bluetooth
      self.nixosModules.gaming
      self.nixosModules.nvidia
      self.nixosModules.programs
      self.nixosModules.sunshine
      self.nixosModules.udev

      self.nixosModules.dev
      self.nixosModules.systemPackages

      self.nixosModules.legionHardware
      self.nixosModules.legionFileSystem
      self.nixosModules.legionPower
      self.nixosModules.legionHostName
    ];

  };
}
