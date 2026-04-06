{ ... }:
{
  flake.nixosModules.dev =
    { pkgs, ... }:
    {
      programs.git = {
        enable = true;
        lfs.enable = true;
        package = pkgs.gitFull;
        config = {
          init = {
            defaultBranch = "main";
          };
        };
      };
    };
}
