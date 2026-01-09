{ theme, lib, config, pkgs, ... }:
{
  home.file.".config/hypr/hyprpaper.conf" = {
    force = true;
    text = ''
      preload = ${theme.wallpaper}
      wallpaper = , ${theme.wallpaper}
    '';
  };
  home.activation.reloadHyprpaper = config.lib.dag.entryAfter [ "linkGeneration" ] ''
    $DRY_RUN_CMD ${pkgs.procps}/bin/pkill hyprpaper || true
    $DRY_RUN_CMD ${pkgs.hyprland}/bin/hyprctl dispatch exec hyprpaper
  '';
}
