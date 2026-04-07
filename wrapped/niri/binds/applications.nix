{ ... }:
{
  flake.nixosModules.niriApplications =
    { pkgs, lib, ... }:
    {
      settings.binds = {
        # Applications
        "Mod+T" = _: {
          props.repeat = false;
          props.hotkey-overlay-title = "Kitty";
          content.spawn = [
            "runapp"
            "kitty"
          ];
        };
        "Mod+E" = _: {
          props.repeat = false;
          props.hotkey-overlay-title = "File Manager";
          content.spawn = [
            "runapp"
            "dolphin"
          ];
        };
        "Mod+B" = _: {
          props.repeat = false;
          props.hotkey-overlay-title = "Helium";
          content.spawn = [
            "runapp"
            "helium"
          ];
        };
        "Mod+Shift+B" = _: {
          props.repeat = false;
          props.hotkey-overlay-title = "Incognito";
          content.spawn = [
            "runapp"
            "helium"
            "--incognito"
          ];
        };
        "Mod+M" = _: {
          props.repeat = false;
          props.hotkey-overlay-title = "Youtube Music";
          content.spawn = [
            "nirius"
            "focus-or-spawn"
            "--app-id"
            "com.github.th_ch.youtube_music"
            "runapp"
            "pear-desktop"
          ];
        };
        "Mod+Z" = _: {
          props.repeat = false;
          props.hotkey-overlay-title = "Zed";
          content.spawn = [
            "runapp"
            "zeditor"
          ];
        };
        "Ctrl+Shift+Escape" = _: {
          props.repeat = false;
          props.hotkey-overlay-title = "Bottom";
          content.spawn = [
            "runapp"
            "kitty"
            "-e"
            "btm"
          ];
        };
        "Mod+Slash" = _: {
          props.repeat = false;
          props.hotkey-overlay-title = "Bitwarden";
          content.spawn = [
            "runapp"
            "bitwarden"
          ];
        };
        "Mod+Shift+Escape" = _: {
          props.repeat = false;
          props.hotkey-overlay-title = "Quit Niri";
          content.quit = _: { };
        };
        "Mod+Shift+M" = _: {
          props.repeat = false;
          props.hotkey-overlay-title = "Wiremix";
          content.spawn = [
            "runapp"
            "kitty"
            "--class=wiremix"
            "-e"
            "wiremix"
          ];
        };
      };
    };
}
