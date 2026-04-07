{ ... }:
{
  flake.nixosModules.cosmic =
    { pkgs, ... }:
    {
      services.displayManager.cosmic-greeter.enable = true;
      services.desktopManager.cosmic.enable = true;
      environment.cosmic.excludePackages = with pkgs; [
        cosmic-icons
        cosmic-edit
        cosmic-randr
        cosmic-screenshot
        cosmic-term
        cosmic-wallpapers
        pop-icon-theme
        cosmic-player
        cosmic-store
        pulseaudio
      ];
    };
}
