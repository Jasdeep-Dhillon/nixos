{ ... }:
{
  flake.nixosModules.user =
    { pkgs, ... }:
    {
      users.users.arc = {
        name = "Arc";
        isNormalUser = true;
        description = "Arc's user account";
        extraGroups = [
          "networkmanager"
          "wheel"
          "video"
          "input"
          "gamemode"
          "kvm"
        ];
      };
      shell = pkgs.nushell;
    };
}
