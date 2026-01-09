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
      impure_msg = "[](bold blue)"
      pure_msg = "[](bold green)"
      unknown_msg = "[](bold yellow)"
      symbol = ""
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
      rosewater = "${theme.fg0}"
      flamingo = "${theme.fg}"
      pink = "${theme.purple}"
      mauve = "${theme.purple}"
      red = "${theme.red}"
      maroon = "${theme.red}"
      peach = "${theme.orange}"
      yellow = "${theme.yellow}"
      green = "${theme.green}"
      teal = "${theme.aqua}"
      sky = "${theme.blue}"
      sapphire = "${theme.blue}"
      blue = "${theme.blue}"
      lavender = "${theme.purple}"
      text = "${theme.fg}"
      subtext1 = "${theme.fg}"
      subtext0 = "${theme.fg}"
      overlay2 = "${theme.gray}"
      overlay1 = "${theme.gray}"
      overlay0 = "${theme.gray}"
      surface2 = "${theme.bg2}"
      surface1 = "${theme.bg1}"
      surface0 = "${theme.bg1}"
      base = "${theme.bg}"
      mantle = "${theme.bg0}"
      crust = "${theme.bg0}"
    '';
  };
}
