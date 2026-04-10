{ self, inputs, ... }:
{
  flake.homeConfigurations.arc = inputs.home-manager.lib.homeManagerConfiguration {
    modules = with self.homeModules; [
      base

      theme
      services
      packages

      shortcut

      # Dev
      android
      editor
      devApps
      toolchain
      zed
    ];
  };
}
