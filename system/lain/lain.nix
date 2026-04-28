{
  self,
  inputs,
  config,
  ...
}:
{
  flake.nixosConfigurations.lain = inputs.nixpkgs.lib.nixosSystem {
    modules = with self.nixosModules; [
      boot
      lanzaboote
      locale
      run0
      services
      settings
      user
      ssh-server
      jellyfin
      lain
      # Optional Modules
      nvidia

      programs
    ];
  };
}
