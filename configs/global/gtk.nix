{
  theme,
  pkgs,
  ...
}:

let
  # Determine if theme is light or dark
  isLightTheme =
    theme.name == "cherry-blossom" || theme.name == "catppuccin-latte" || theme.name == "frutiger-aero";

  # Minimal CSS - ONLY color overrides, no structural changes
  gtk3CSS = ''
    /* ============================================
       BASE16 COLOR OVERRIDES FOR ADWAITA
       Preserves all Adwaita styling, only changes colors
       ============================================ */

    /* === GTK3 Standard Color Definitions === */
    /* These are the variables Adwaita uses internally */
    @define-color theme_fg_color ${theme.base05};
    @define-color theme_bg_color ${theme.base00};
    @define-color theme_base_color ${theme.base00};
    @define-color theme_selected_bg_color ${theme.base0E};
    @define-color theme_selected_fg_color ${theme.base00};
    @define-color insensitive_bg_color ${theme.base01};
    @define-color insensitive_fg_color ${theme.base03};
    @define-color insensitive_base_color ${theme.base01};
    @define-color theme_unfocused_fg_color ${theme.base04};
    @define-color theme_unfocused_bg_color ${theme.base01};
    @define-color theme_unfocused_base_color ${theme.base01};
    @define-color theme_unfocused_selected_bg_color ${theme.base03};
    @define-color theme_unfocused_selected_fg_color ${theme.base05};
    @define-color borders ${theme.base02};
    @define-color unfocused_borders ${theme.base02};
    @define-color warning_color ${theme.base0A};
    @define-color error_color ${theme.base08};
    @define-color success_color ${theme.base0B};

    /* Additional semantic colors */
    @define-color wm_title ${theme.base05};
    @define-color wm_unfocused_title ${theme.base04};
    @define-color wm_bg ${theme.base01};
    @define-color wm_border ${theme.base02};
    @define-color wm_unfocused_border ${theme.base02};

    @define-color content_view_bg ${theme.base00};
    @define-color text_view_bg ${theme.base00};

    /* Link colors */
    @define-color link_color ${theme.base0D};
    @define-color link_visited_color ${theme.base0F};

    /* Sidebar colors */
    @define-color sidebar_bg_color ${theme.base01};
    @define-color sidebar_fg_color ${theme.base05};
    @define-color sidebar_backdrop_color ${theme.base01};
    @define-color sidebar_shade_color rgba(0, 0, 0, 0.07);

    /* Header bar colors */
    @define-color headerbar_bg_color ${theme.base01};
    @define-color headerbar_fg_color ${theme.base05};
    @define-color headerbar_border_color ${theme.base02};
    @define-color headerbar_backdrop_color ${theme.base00};
    @define-color headerbar_shade_color rgba(0, 0, 0, 0.07);

    /* Popover colors */
    @define-color popover_bg_color ${theme.base00};
    @define-color popover_fg_color ${theme.base05};

    /* Miscellaneous */
    @define-color scrollbar_outline_color rgba(0, 0, 0, 0.5);
    @define-color osd_fg_color ${theme.base05};
    @define-color osd_bg_color ${theme.base01};
    @define-color osd_borders_color rgba(0, 0, 0, 0.7);
  '';

  # GTK4 uses similar color variables
  gtk4CSS = ''
    /* ============================================
       BASE16 COLOR OVERRIDES FOR ADWAITA (GTK4)
       ============================================ */

    @define-color accent_bg_color ${theme.base0E};
    @define-color accent_fg_color ${theme.base00};
    @define-color accent_color ${theme.base0E};

    @define-color destructive_bg_color ${theme.base08};
    @define-color destructive_fg_color ${theme.base00};
    @define-color destructive_color ${theme.base08};

    @define-color success_bg_color ${theme.base0B};
    @define-color success_fg_color ${theme.base00};
    @define-color success_color ${theme.base0B};

    @define-color warning_bg_color ${theme.base0A};
    @define-color warning_fg_color ${theme.base00};
    @define-color warning_color ${theme.base0A};

    @define-color error_bg_color ${theme.base08};
    @define-color error_fg_color ${theme.base00};
    @define-color error_color ${theme.base08};

    @define-color window_bg_color ${theme.base00};
    @define-color window_fg_color ${theme.base05};

    @define-color view_bg_color ${theme.base00};
    @define-color view_fg_color ${theme.base05};

    @define-color headerbar_bg_color ${theme.base01};
    @define-color headerbar_fg_color ${theme.base05};
    @define-color headerbar_border_color ${theme.base02};
    @define-color headerbar_backdrop_color ${theme.base00};
    @define-color headerbar_shade_color rgba(0, 0, 0, 0.07);

    @define-color card_bg_color ${theme.base01};
    @define-color card_fg_color ${theme.base05};
    @define-color card_shade_color rgba(0, 0, 0, 0.07);

    @define-color dialog_bg_color ${theme.base01};
    @define-color dialog_fg_color ${theme.base05};

    @define-color popover_bg_color ${theme.base00};
    @define-color popover_fg_color ${theme.base05};

    @define-color shade_color rgba(0, 0, 0, 0.07);
    @define-color scrollbar_outline_color rgba(0, 0, 0, 0.5);

    @define-color sidebar_bg_color ${theme.base01};
    @define-color sidebar_fg_color ${theme.base05};
    @define-color sidebar_backdrop_color ${theme.base01};
    @define-color sidebar_shade_color rgba(0, 0, 0, 0.07);

    @define-color secondary_sidebar_bg_color ${theme.base01};
    @define-color secondary_sidebar_fg_color ${theme.base05};
    @define-color secondary_sidebar_backdrop_color ${theme.base01};
    @define-color secondary_sidebar_shade_color rgba(0, 0, 0, 0.07);
  '';

in
{
  gtk = {
    enable = true;

    # Use Adwaita as base - it provides all the structure/sizing/borders
    theme = {
      name = if isLightTheme then "Adwaita" else "Adwaita-dark";
      package = pkgs.gnome-themes-extra;
    };

    iconTheme = {
      name = "Adwaita";
      package = pkgs.adwaita-icon-theme;
    };

    cursorTheme = {
      name = if isLightTheme then "Bibata-Modern-Ice" else "Catppuccin-Mocha-Dark";
      size = 24;
      package = if isLightTheme then pkgs.bibata-cursors else pkgs.catppuccin-cursors.mochaDark;
    };

    font = {
      name = "Noto Sans Medium"; # "Liberation Sans"
      size = 11;
      package = pkgs.noto-fonts; # pkgs.liberation_ttf
    };

    gtk2.extraConfig = ''
      gtk-application-prefer-dark-theme = ${if isLightTheme then "0" else "1"}
    '';

    gtk3.extraConfig = {
      gtk-application-prefer-dark-theme = !isLightTheme;
      gtk-decoration-layout = "menu:close";
      gtk-enable-animations = true;
      gtk-primary-button-warps-slider = false;
    };

    # Only color overrides - preserves Adwaita's structure
    gtk3.extraCss = gtk3CSS;

    gtk4.extraConfig = {
      gtk-application-prefer-dark-theme = !isLightTheme;
      gtk-decoration-layout = "menu:close";
    };

    # Only color overrides - preserves Adwaita's structure
    gtk4.extraCss = gtk4CSS;
  };

  # Set additional environment variables for consistency
  home.sessionVariables = {
    GTK_THEME = if isLightTheme then "Adwaita" else "Adwaita-dark";
  };

  # Qt theming to match GTK
  qt = {
    enable = true;
    platformTheme.name = "gtk3";
    style.name = "adwaita${if isLightTheme then "" else "-dark"}";
  };

  # Force overwrite existing files
  # Note: Don't need to force .gtkrc-2.0 as gtk module already manages it
  xdg.configFile."gtk-3.0/settings.ini".force = true;
  xdg.configFile."gtk-3.0/gtk.css".force = true;
  xdg.configFile."gtk-4.0/settings.ini".force = true;
  xdg.configFile."gtk-4.0/gtk.css".force = true;
}
