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

      /* -----------------------------------------------------
       * BAR
       * ----------------------------------------------------- */

      window#waybar {
        background-color: rgba(0, 0, 0, 0);
        transition-property: background-color;
        transition-duration: 0.5s;
        color: ${theme.base05};
      }

      window#waybar.hidden {
        opacity: 0.5;
      }

      /* -----------------------------------------------------
       * WORKSPACES
       * ----------------------------------------------------- */

      #workspaces {
        background-color: transparent;
      }

      #workspaces button {
        all: initial;
        min-width: 0;
        box-shadow: inset 0 -3px transparent;
        padding: 6px 18px;
        margin: 6px 3px;
        border-radius: 4px;

        background-color: ${theme.base01};
        color: ${theme.base05};
      }

      #workspaces button.active {
        background-color: ${theme.base0D};
        color: ${theme.base00};
      }

      #workspaces button:hover {
        background-color: ${theme.base0D};
        color: ${theme.base00};
      }

      #workspaces button.urgent {
        background-color: ${theme.base08};
        color: ${theme.base00};
      }

      /* -----------------------------------------------------
       * MODULES (shared)
       * ----------------------------------------------------- */

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

        background-color: ${theme.base01};
        color: ${theme.base05};
      }

      /* -----------------------------------------------------
       * LOGO
       * ----------------------------------------------------- */

      #custom-logo {
        padding-right: 7px;
        padding-left: 7px;
        margin-left: 5px;
        font-size: 15px;
        border-radius: 8px 0px 0px 8px;
        color: ${theme.base0D};
      }

      /* -----------------------------------------------------
       * MEMORY
       * ----------------------------------------------------- */

      #memory {
        background-color: ${theme.base0C}; /* cyan = system info */
        color: ${theme.base00};
      }

      /* -----------------------------------------------------
       * BATTERY
       * ----------------------------------------------------- */

      #battery {
        background-color: ${theme.base0B}; /* green = OK */
        color: ${theme.base00};
      }

      #battery.warning {
        background-color: ${theme.base09}; /* orange = warning */
        color: ${theme.base00};
      }

      #battery.critical,
      #battery.urgent {
        background-color: ${theme.base08}; /* red = critical */
        color: ${theme.base00};
      }

      #battery.charging {
        background-color: ${theme.base0B};
        color: ${theme.base00};
      }

      /* -----------------------------------------------------
       * BACKLIGHT
       * ----------------------------------------------------- */

      #backlight {
        background-color: ${theme.base09}; /* orange = attention */
        color: ${theme.base00};
      }

      /* -----------------------------------------------------
       * AUDIO
       * ----------------------------------------------------- */

      #wireplumber {
        background-color: ${theme.base0A}; /* yellow = audio/attention */
        color: ${theme.base00};
      }

      /* -----------------------------------------------------
       * NETWORK
       * ----------------------------------------------------- */

      #network {
        background-color: ${theme.base0D}; /* blue = primary accent */
        color: ${theme.base00};
        padding-right: 17px;
      }

      /* -----------------------------------------------------
       * CLOCK
       * ----------------------------------------------------- */

      #clock {
        font-family: JetBrainsMono Nerd Font;
        background-color: ${theme.base0E}; /* purple = secondary accent */
        color: ${theme.base00};
      }

      /* -----------------------------------------------------
       * POWER
       * ----------------------------------------------------- */

      #custom-power {
        background-color: ${theme.base09};
        color: ${theme.base00};
        margin-right: 12px;
      }

      /* -----------------------------------------------------
       * NOTIFICATIONS
       * ----------------------------------------------------- */

      #custom-notifications {
        background-color: ${theme.base03}; /* muted foreground */
        color: ${theme.base00};
      }

      /* -----------------------------------------------------
       * TOOLTIP
       * ----------------------------------------------------- */

      tooltip {
        border-radius: 8px;
        padding: 15px;
        background-color: ${theme.base01};
        color: ${theme.base05};
      }

      tooltip label {
        padding: 5px;
        background-color: ${theme.base01};
        color: ${theme.base05};
      }
    '';
  };
}
