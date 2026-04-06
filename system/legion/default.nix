{ self, inputs, ... }:
{
  flake.nixosConfigurations.legion = inputs.nixpkgs.lib.nixosSystem {
    modules = [
      self.nixosModules.hardware
      self.nixosModules.settings

      self.nixosModules.legion.fileSystem
      self.nixosModules.legion.power
    ];

  };
}
