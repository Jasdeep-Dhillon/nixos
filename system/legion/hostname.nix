{...}: {
  flake.nixosModules.legionHostName = {
    networking.hostName = "legion";
  };
}