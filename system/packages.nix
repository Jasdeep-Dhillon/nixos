{ ... }:
{
  flake.nixosModules.systemPackages =
    { pkgs, ... }:
    {
      environment.systemPackages = with pkgs; [
        ffmpeg
        yt-dlp
        bat
        wget
        imagemagick
        uutils-coreutils-noprefix
        bottom
        fastfetch
        eza
        zoxide
        dua
        kdePackages.dolphin
        kdePackages.ark
        bazaar
        yazi
        s-tui
      ];
    };
}
