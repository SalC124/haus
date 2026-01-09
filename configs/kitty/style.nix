{ theme, lib, config, pkgs, ... }:
{
  home.file.".config/kitty/style.conf" = {
    force = true;
    text = ''
      # vim:ft=kitty
      # Primary colors
      foreground              ${theme.fg}
      background              ${theme.bg}
      selection_foreground    ${theme.bg}
      selection_background    ${theme.purple}

      # Cursor
      cursor                  ${theme.fg0}
      cursor_text_color       ${theme.bg}

      # URL hover
      url_color               ${theme.blue}

      # Borders
      active_border_color     ${theme.purple}
      inactive_border_color   ${theme.bg2}
      bell_border_color       ${theme.purple}

      # Tabs
      active_tab_foreground   ${theme.bg}
      active_tab_background   ${theme.purple}
      inactive_tab_foreground ${theme.fg}
      inactive_tab_background #181825
      tab_bar_background      #11111B

      # Marks
      mark1_foreground ${theme.bg}
      mark1_background ${theme.purple}
      mark2_foreground ${theme.bg}
      mark2_background ${theme.fg}
      mark3_foreground ${theme.bg}
      mark3_background ${theme.blue}

      # Terminal colors — yellows replaced with light purples

      # black
      color0  ${theme.bg1}
      color8  ${theme.bg2}

      # red
      color1  ${theme.red}
      color9  ${theme.red}

      # green
      color2  ${theme.green}
      color10 ${theme.green}

      # "yellow" (now purple!)
      color3  ${theme.yellow}
      color11 ${theme.yellow}

      # blue
      color4  ${theme.blue}
      color12 ${theme.blue}

      # magenta
      color5  ${theme.purple}
      color13 ${theme.purple}

      # cyan
      color6  ${theme.aqua}
      color14 ${theme.aqua}

      # white
      color7  ${theme.gray}
      color15 ${theme.fg}
    '';
  };
}
