{ ... }:
{
  flake.nixosModules.udev = {
    services.udev.extraRules = ''
      KERNEL=="hidraw*", ATTRS{idVendor}=="352d", ATTRS{idProduct}=="2383", TAG+="uaccess"
      KERNEL=="hidraw*", ATTRS{idVendor}=="3554", ATTRS{idProduct}=="f58a", TAG+="uaccess"
      SUBSYSTEM=="usb", ATTR{idVendor}=="048d", ATTR{idProduct}=="c975", MODE="0666"
    '';
  };
}
