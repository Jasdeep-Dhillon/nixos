{ ... }:
{
  flake.nixosModules.hyprland =
    { pkgs, ... }:
    {
      environment.systemPackages = with pkgs; [
        # Hypr Utilities
        hypridle
        hyprshot
        hyprpaper
        hyprcursor
        hyprlock
      ];
      
      services.hypridle.enable = true;

      programs = {
        hyprland = {
          enable = true;
          withUWSM = true;
        };
      };
    };
}
