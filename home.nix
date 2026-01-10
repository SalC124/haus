{ config, pkgs, activeTheme, ... }:

let
  themesConfig = import ./themes.nix { inherit activeTheme; };
  theme = themesConfig.themes.${themesConfig.activeTheme};
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
  ];

  _module.args = { inherit theme; };

  programs.home-manager.enable = true;

}
