{ self, ... }:
{
  flake.nixosModules.base = {
    imports = [
      self.nixosModules.boot
      self.nixosModules.flatpak
      self.nixosModules.fonts
      self.nixosModules.lanzaboote
      self.nixosModules.locale
      self.nixosModules.networking
      self.nixosModules.run0
      self.nixosModules.services
      self.nixosModules.settings
      self.nixosModules.user
    ];
  };
}
