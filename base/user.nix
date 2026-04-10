{ inputs, ... }:
{
  flake.nixosModules.user =
    { pkgs, ... }:
    {
      users.users.arc = {
        name = "arc";
        isNormalUser = true;
        description = "Arc";
        extraGroups = [
          "networkmanager"
          "wheel"
          "video"
          "input"
          "gamemode"
          "kvm"
        ];

        packages = [
          inputs.home-manager.packages.${pkgs.stdenv.hostPlatform.system}.default
        ];

        shell = pkgs.nushell;
      };
    };
}
