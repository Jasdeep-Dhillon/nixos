{ ... }:
{
  flake.nixosModules.niriMedia = {
    settings.binds = {
      XF86AudioRaiseVolume = _: {
        props.allow-when-locked = true;
        content.spawn-sh = "wpctl set-volume @DEFAULT_AUDIO_SINK@ 0.02+ -l 1.0";
      };
      XF86AudioLowerVolume = _: {
        props.allow-when-locked = true;
        content.spawn-sh = "wpctl set-volume @DEFAULT_AUDIO_SINK@ 0.02-";
      };
      XF86AudioMute = _: {
        props.allow-when-locked = true;
        content.spawn-sh = "wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle";
      };
      XF86AudioMicMute = _: {
        props.allow-when-locked = true;
        content.spawn-sh = "wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle";
      };

      # Example media keys mapping using playerctl.
      # This will work with any MPRIS-enabled media player.
      XF86AudioPlay = _: {
        props.allow-when-locked = true;
        content.spawn-sh = "noctalia-shell ipc call media playPause";
      };
      XF86AudioStop = _: {
        props.allow-when-locked = true;
        content.spawn-sh = "noctalia-shell ipc call media stop";
      };
      XF86AudioPrev = _: {
        props.allow-when-locked = true;
        content.spawn-sh = "noctalia-shell ipc call media previous";
      };
      XF86AudioNext = _: {
        props.allow-when-locked = true;
        content.spawn-sh = "noctalia-shell ipc call media next";
      };
    };
  };
}
