{
  pkgs,
  theme,
  activeTheme,
  selectedGtkTheme,
  ...
}:

let
  # Determine if the theme is light or dark
  isLightTheme =
    theme.name == "cherry-blossom" || theme.name == "catppuccin-latte" || theme.name == "frutiger-aero";
  hybridCss = import ./hybrid-css.nix theme;
in
{
  gtk = {
    enable = true;

    # Use the generated GTK theme package
    theme = {
      name = activeTheme;
      package = selectedGtkTheme;
    };

    gtk3.extraCss = hybridCss;
    gtk4.extraCss = hybridCss;

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

    gtk4.extraConfig = {
      gtk-application-prefer-dark-theme = !isLightTheme;
      gtk-decoration-layout = "menu:close";
    };
  };

  # Chromium/Edge reads this
  home.sessionVariables = {
    GTK_THEME = activeTheme;
  };
}
