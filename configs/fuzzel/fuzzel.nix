{ theme, lib, config, pkgs, ... }:
{
  home.packages = [ pkgs.fuzzel ];
  home.file.".config/fuzzel/fuzzel.ini" = {
    force = true;
    text = ''
      [main]
      font=CaskaydiaCove Nerd Font Mono:size=12
      scale=1.2

      [colors]
      background=${builtins.substring 1 6 theme.bg}dd
      text=${builtins.substring 1 6 theme.fg}ff
      prompt=${builtins.substring 1 6 theme.fg}ff
      placeholder=${builtins.substring 1 6 theme.blue}ff
      input=${builtins.substring 1 6 theme.fg}ff
      match=${builtins.substring 1 6 theme.purple}ff
      selection=${builtins.substring 1 6 theme.gray}ff
      selection-text=${builtins.substring 1 6 theme.fg}ff
      selection-match=${builtins.substring 1 6 theme.purple}ff
      counter=${builtins.substring 1 6 theme.bg2}ff
      border=${builtins.substring 1 6 theme.purple}ff
    '';
  };
}
