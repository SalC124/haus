{
  theme,
  lib,
  config,
  pkgs,
  ...
}:
{
  home.file.".config/kitty/style.conf" = {
    force = true;
    text = ''
      # vim:ft=kitty
      # Primary colors
      foreground              ${theme.base04}
      background              ${theme.base00}
      selection_foreground    ${theme.base00}
      selection_background    ${theme.base0E}

      # Cursor
      cursor                  ${theme.base05}
      cursor_text_color       ${theme.base00}

      # URL hover
      url_color               ${theme.base0D}

      # Borders
      active_border_color     ${theme.base0E}
      inactive_border_color   ${theme.base03}
      bell_border_color       ${theme.base0E}

      # Tabs
      active_tab_foreground   ${theme.base00}
      active_tab_background   ${theme.base0E}
      inactive_tab_foreground ${theme.base04}
      inactive_tab_background #181825
      tab_bar_background      #11111B

      # Marks
      mark1_foreground ${theme.base00}
      mark1_background ${theme.base0E}
      mark2_foreground ${theme.base00}
      mark2_background ${theme.base04}
      mark3_foreground ${theme.base00}
      mark3_background ${theme.base0D}

      # Terminal colors — yellows replaced with light purples

      # black
      color0  ${theme.base02}
      color8  ${theme.base03}

      # red
      color1  ${theme.base08}
      color9  ${theme.base08}

      # green
      color2  ${theme.base0B}
      color10 ${theme.base0B}

      # "yellow" (now purple!)
      color3  ${theme.base0A}
      color11 ${theme.base0A}

      # blue
      color4  ${theme.base0D}
      color12 ${theme.base0D}

      # magenta
      color5  ${theme.base0E}
      color13 ${theme.base0E}

      # cyan
      color6  ${theme.base0C}
      color14 ${theme.base0C}

      # white
      color7  ${theme.base0F}
      color15 ${theme.base04}
    '';
  };
}
