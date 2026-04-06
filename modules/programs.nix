{ ... }:
{
  flake.nixosModules.programs =
    { pkgs, ... }:
    {
      security.polkit.enable = true;
      programs.appimage = {
        enable = true;
        binfmt = true;
      };
      environment.shells = [ pkgs.nushell ];
    };
}
