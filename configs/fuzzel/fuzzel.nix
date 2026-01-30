{
  theme,
  lib,
  config,
  pkgs,
  ...
}:
{
  home.packages = [ pkgs.fuzzel ];
  home.file.".config/fuzzel/fuzzel.ini" = {
    force = true;
    text = ''
      [main]
      font=CaskaydiaCove Nerd Font Mono:size=12
      scale=1.2
      prompt="❯ "

      [colors]
      background=${builtins.substring 1 6 theme.base00}dd
      text=${builtins.substring 1 6 theme.base04}ff
      prompt=${builtins.substring 1 6 theme.base0B}ff
      placeholder=${builtins.substring 1 6 theme.base0D}ff
      input=${builtins.substring 1 6 theme.base04}ff
      match=${builtins.substring 1 6 theme.base0E}ff
      selection=${builtins.substring 1 6 theme.base0F}ff
      selection-text=${builtins.substring 1 6 theme.base04}ff
      selection-match=${builtins.substring 1 6 theme.base0E}ff
      counter=${builtins.substring 1 6 theme.base03}ff
      border=${builtins.substring 1 6 theme.base0E}ff
    '';
  };
}
