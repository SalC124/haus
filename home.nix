{
  pkgs,
  lib,
  activeTheme,
  ...
}:

let
  themesConfig = import ./themes.nix { inherit activeTheme; };
  theme = themesConfig.themes.${themesConfig.activeTheme};

  gtkThemeGen = import ./modules/gtk-theme-generator.nix { inherit pkgs lib; };
  selectedGtkTheme = gtkThemeGen activeTheme themesConfig.themes.${activeTheme};
in
{
  home.username = "saltcal";
  home.homeDirectory = "/home/saltcal";
  home.stateVersion = "25.11";

  imports = [
    ./configs/starship.nix
    ./configs/hypr/hyprland.nix
    ./configs/hypr/hyprpaper.nix
    ./configs/waybar/config.nix
    ./configs/waybar/style.nix
    ./configs/kitty/kitty.nix
    ./configs/kitty/style.nix
    ./configs/fuzzel/fuzzel.nix
    ./configs/zed/zed-thema.nix

    # ./configs/global/gtk.nix
    ./modules/gtk.nix
  ];

  _module.args = { inherit theme selectedGtkTheme activeTheme; };

  programs.home-manager.enable = true;

}
