{ ... }:
{
  flake.nixosModules.dev =
    { pkgs, ... }:
    {
      environment.systemPackages = with pkgs; [
        fd
        zellij
        hyperfine
        tokei 
      ];
    };
}
