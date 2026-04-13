{ inputs, ... }:
{
  flake.nixosModules.theme =
    { pkgs, ... }:
    {
      imports = [ inputs.stylix.nixosModules.stylix ];
      services.desktopManager.plasma6.enableQt5Integration = true;
      environment.systemPackages = with pkgs; [
        kdePackages.breeze-icons
        morewaita-icon-theme
      ];
    };
  flake.homeModules.theme =
    {
      pkgs,
      config,
      lib,
      ...
    }:
    {
      imports = [ inputs.stylix.homeModules.stylix ];
      stylix = {
        enable = true;
        autoEnable = true;
        base16Scheme = "${pkgs.base16-schemes}/share/themes/catppuccin-mocha.yaml";
        polarity = "dark";
        targets.qt.enable = false;
        icons = {
          enable = true;
          dark = "MoreWaita";
          light = "MoreWaita";
          package = pkgs.morewaita-icon-theme;
        };
        fonts = {
          sizes = {
            applications = 12;
            desktop = 12;
            terminal = 12;
          };
          serif = {
            package = pkgs.dejavu_fonts;
            name = "DejaVu Serif";
          };
          sansSerif = {
            package = pkgs.inter;
            name = "Inter";
          };
          monospace = {
            package = pkgs.maple-mono.NF;
            name = "Maple Mono NL NF";
          };
          emoji = {
            package = pkgs.noto-fonts-color-emoji;
            name = "Noto Color Emoji";
          };
        };
      };
      home.pointerCursor = lib.mkDefault {
        enable = true;
        name = "Quintom_Ink";
        package = pkgs.quintom-cursor-theme;
        size = 20;
        hyprcursor = {
          enable = true;
          size = 20;
        };
        gtk.enable = true;
      };
      home.packages = with pkgs; [
        kdePackages.breeze
        kdePackages.breeze-icons
        adwaita-icon-theme
        adwaita-icon-theme-legacy
      ];
      gtk = {
        gtk4.theme = config.gtk.theme;
        enable = true;
        colorScheme = lib.mkForce "dark";
        iconTheme = lib.mkDefault {
          package = pkgs.morewaita-icon-theme;
          name = "MoreWaita";
        };
        font = {
          name = "Inter";
          size = 12;
        };
      };
      dconf = {
        settings = {
          "org/gnome/desktop/wm/preferences" = {
            button-layout = "icon: close";
          };
        };
      };
      qt = {
        enable = true;
        platformTheme = {
          name = "qtct";
          package = pkgs.catppuccin-qt5ct;
        };
        qt5ctSettings = {
          Appearance = {
            style = "Windows";
            icon_theme = "breeze-dark";
            standard_dialogs = "xdgdesktopportal";
            color_scheme_path = "~/.nix-profile/share/qt5ct/colors/catppuccin-mocha-lavender.conf";
            custom_palette = true;
          };
          Fonts = {
            fixed = ''"Maple Mono NF,12"'';
            general = ''"Inter,12"'';
          };
        };
        qt6ctSettings = {
          Appearance = {
            style = "Breeze";
            icon_theme = "breeze-dark";
            standard_dialogs = "xdgdesktopportal";
            color_scheme_path = "~/.nix-profile/share/qt6ct/colors/catppuccin-mocha-lavender.conf";
            custom_palette = true;
          };
          Fonts = {
            fixed = ''"Maple Mono NF,12"'';
            general = ''"Inter,12"'';
          };
        };
      };
    };
}
