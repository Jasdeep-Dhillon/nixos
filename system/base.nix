{ self, ... }:
{
  flake.nixosModules.base = {
    imports = with self.nixosModules; [
      boot
      flatpak
      fonts
      lanzaboote
      locale
      networking
      run0
      services
      settings
      user
    ];
  };
}
