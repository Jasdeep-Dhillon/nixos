{ ... }:
{
  flake.nixosModules.nixld =
    { pkgs, ... }:
    {
      programs.nix-ld = {
        enable = true;
        libraries = with pkgs; [ stdenv ];
      };
    };
}
