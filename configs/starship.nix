{ theme, ... }:
{
  home.file.".config/starship.toml" = {
    force = true;
    text = ''
      palette = "catppuccin_mocha"

      format = ''''
      [\(](bold lavender)$username(bold text)[\)](bold lavender)[-\[](bold lavender)$directory[\]](bold lavender)$git_branch$rust$java$haskell$python$nodejs$kotlin$nix_shell
      (bold lavender)$character
      ''''

      right_format = ''''
      $cmd_duration
      ''''

      add_newline = true

      [cmd_duration]
      min_time = 500
      show_milliseconds = true
      show_notifications = false
      min_time_to_notify = 30_000
      format = '[$duration](bold yellow)'

      [nix_shell]
      disabled = false
      impure_msg = "[](bold blue)"
      pure_msg = "[](bold green)"
      unknown_msg = "[](bold yellow)"
      symbol = ""
      format = '[-\[](bold lavender)$state[\]](bold lavender)'

      [fill]
      symbol = '─'
      style = 'bold lavender'

      [git_branch]
      style = "bold sapphire"
      format = '[-\[](bold lavender)[$symbol]($style)[$branch]($style)[\]](bold lavender)'

      [directory]
      truncation_length = 3
      style = "bold mauve"
      truncation_symbol = "…/"
      format = '[$path]($style)[$read_only]($read_only_style)'

      [directory.substitutions]
      "Documents" = "󰈙"
      "Downloads" = ""
      "Music" = "󰝚"
      "Pictures" = ""
      "Developer" = "󰲋"

      [username]
      show_always = true
      style_user = "fg:text"
      style_root = "fg:text"
      format = '[$user]($style)'

      [character]
      disabled = false
      success_symbol = '[❯](bold fg:green)'
      error_symbol = '[❯](bold fg:red)'
      vimcmd_symbol = '[❮](bold fg:green)'

      [nodejs]
      symbol = ""
      format = '[-\[](bold lavender)[[$symbol( $version)](fg:green)]($style)[\]](bold lavender)'

      [rust]
      symbol = ""
      format = '[-\[](bold lavender)[[$symbol rust-tacular!](fg:peach)]($style)[\]](bold lavender)'

      [java]
      symbol = ""
      format = '[-\[](bold lavender)[[$symbol( $version)](fg:blue)]($style)[\]](bold lavender)'

      [kotlin]
      symbol = ""
      format = '[-\[](bold lavender)[[$symbol( $version)](fg:mauve)]($style)[\]](bold lavender)'

      [haskell]
      symbol = ""
      format = '[-\[](bold lavender)[[$symbol( $version)](fg:mauve)]($style)[\]](bold lavender)'

      [python]
      symbol = ""
      format = '[-\[](bold lavender)[[$symbol( $version)](fg:yellow)]($style)[\]](bold lavender)'

      [palettes.catppuccin_mocha]
      rosewater = "${theme.base05}"
      flamingo = "${theme.base04}"
      pink = "${theme.base0E}"
      mauve = "${theme.base0E}"
      red = "${theme.base08}"
      maroon = "${theme.base08}"
      peach = "${theme.base09}"
      yellow = "${theme.base0A}"
      green = "${theme.base0B}"
      teal = "${theme.base0C}"
      sky = "${theme.base0D}"
      sapphire = "${theme.base0D}"
      blue = "${theme.base0D}"
      lavender = "${theme.base0E}"
      text = "${theme.base04}"
      subtext1 = "${theme.base04}"
      subtext0 = "${theme.base04}"
      overlay2 = "${theme.base0F}"
      overlay1 = "${theme.base0F}"
      overlay0 = "${theme.base0F}"
      surface2 = "${theme.base03}"
      surface1 = "${theme.base02}"
      surface0 = "${theme.base02}"
      base = "${theme.base00}"
      mantle = "${theme.base01}"
      crust = "${theme.base01}"
    '';
  };
}
