{
  theme,
  lib,
  config,
  pkgs,
  ...
}:
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
        color: ${theme.base04};
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
        background-color: ${theme.base00};
        color: ${theme.base04};
      }

      #workspaces button.active {
        color: ${theme.base00};
        background-color: ${theme.base04};
      }

      #workspaces button:hover {
        box-shadow: inherit;
        text-shadow: inherit;
        color: ${theme.base00};
        background-color: ${theme.base04};
      }

      #workspaces button.urgent {
        background-color: ${theme.base08};
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
        background-color: ${theme.base00};
        color: ${theme.base00};
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
        color: ${theme.base0D};
      }

      #memory {
        background-color: ${theme.base09};
      }

      #battery {
        background-color: ${theme.base0C};
      }

      #battery.warning {
        background-color: ${theme.base09};
        color: ${theme.base00};
      }
      #battery.critical,
      #battery.urgent {
        background-color: ${theme.base08};
        color: ${theme.base00};
      }

      #battery.charging {
        background-color: ${theme.base0B};
        color: ${theme.base00};
      }

      #backlight {
        background-color: ${theme.base09};
      }

      #wireplumber {
        background-color: ${theme.base0A};
      }

      #network {
        background-color: ${theme.base0D};
        padding-right: 17px;
      }

      #clock {
        font-family: JetBrainsMono Nerd Font;
        background-color: ${theme.base0E};
      }

      #custom-power {
        background-color: ${theme.base09};
      }

      tooltip {
        border-radius: 8px;
        padding: 15px;
        background-color: ${theme.base00};
      }

      tooltip label {
        padding: 5px;
        background-color: ${theme.base00};
      }

      #custom-notifications {
        background-color: ${theme.base04};
      }
    '';
  };
}
