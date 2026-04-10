{ ... }:
{
  flake.homeModules.editor =
    { pkgs, ... }:
    {
      # IDE / Text Editors
      home.packages = with pkgs; [
        vscode-fhs
        jetbrains.datagrip
        # jetbrains.idea
        helix
      ];
    };
}
