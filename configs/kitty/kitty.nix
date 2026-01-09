{ theme, lib, config, pkgs, ... }:
{
  home.file.".config/kitty/kitty.conf" = {
    force = true;
    text = ''
      include style.conf

      confirm_os_window_close 0

      font_family CaskaydiaCove Nerd Font Mono
      bold_font        auto
      italic_font      auto
      bold_italic_font auto

      font_size 18

      background_opacity 0.5

      tab_bar_edge     top
      tab_bar_style    slant

      cursor_trail                    1
      cursor_trail_start_threshold    2
    '';
  };
}
