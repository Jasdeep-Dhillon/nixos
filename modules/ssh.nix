{ ... }:
{
  flake.nixosModules.ssh-server =
    { pkgs, ... }:
    {
      services.openssh = {
        enable = true;
        settings = {
          AllowUsers = [ "arc" ];
          PasswordAuthentication = false;
          KbdInteractiveAuthentication = false;
          PermitRootLogin = "yes";
        };
      };
    };
}
