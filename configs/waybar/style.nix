{ theme, lib, config, pkgs, ... }:
{
  home.file.".config/waybar/style.css" = {
    force = true;
    text = ''
      * {
        border: none;
        border-radius: 0;
        min-height: 0;
        font-family: JetBrainsMono Nerd Font;
        font-size: 20px;
      }

      window#waybar {
        /* background: transparent; */
        background-color: rgba(28, 29, 43, 0);
        transition-property: background-color;
        transition-duration: 0.5s;
        color: ${theme.fg};
      }

      window#waybar.hidden {
        opacity: 0.5;
      }

      #workspaces {
        background-color: transparent;
      }

      #workspaces button {
        all: initial;
        /* Remove GTK theme values (waybar #1351) */
        min-width: 0;
        /* Fix weird spacing in materia (waybar #450) */
        box-shadow: inset 0 -3px transparent;
        /* Use box-shadow instead of border so the text isn't offset */
        padding: 6px 18px;
        margin: 6px 3px;
        border-radius: 4px;
        background-color: ${theme.bg};
        color: ${theme.fg};
      }

      #workspaces button.active {
        color: ${theme.bg};
        background-color: ${theme.fg};
      }

      #workspaces button:hover {
        box-shadow: inherit;
        text-shadow: inherit;
        color: ${theme.bg};
        background-color: ${theme.fg};
      }

      #workspaces button.urgent {
        background-color: ${theme.red};
      }

      #memory,
      #custom-power,
      #custom-notifications,
      #battery,
      #backlight,
      #wireplumber,
      #network,
      #clock,
      #tray {
        border-radius: 4px;
        margin: 6px 3px;
        padding: 6px 12px;
        background-color: ${theme.bg};
        color: ${theme.bg};
      }

      #custom-power {
        margin-right: 12px;
      }

      #custom-logo {
        padding-right: 7px;
        padding-left: 7px;
        margin-left: 5px;
        font-size: 15px;
        border-radius: 8px 0px 0px 8px;
        color: ${theme.blue};
      }

      #memory {
        background-color: ${theme.orange};
      }

      #battery {
        background-color: ${theme.red};
      }

      #battery.warning,
      #battery.critical,
      #battery.urgent {
        background-color: ${theme.red};
        color: ${theme.bg};
      }

      #battery.charging {
        background-color: ${theme.green};
        color: ${theme.bg};
      }

      #backlight {
        background-color: ${theme.orange};
      }

      #wireplumber {
        background-color: ${theme.yellow};
      }

      #network {
        background-color: ${theme.aqua};
        padding-right: 17px;
      }

      #clock {
        font-family: JetBrainsMono Nerd Font;
        background-color: ${theme.purple};
      }

      #custom-power {
        background-color: ${theme.orange};
      }

      tooltip {
        border-radius: 8px;
        padding: 15px;
        background-color: ${theme.bg};
      }

      tooltip label {
        padding: 5px;
        background-color: ${theme.bg};
      }

      #custom-notifications {
        background-color: ${theme.fg};
      }
    '';
  };
}
