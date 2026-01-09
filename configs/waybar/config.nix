{ theme, lib, config, pkgs, ... }:
{
  home.file.".config/waybar/config.jsonc" = {
    force = true;
    text = ''
      {
        "layer": "top",
        "position": "top",
        "spacing": 0,
        "height": 34,
        "modules-left": [
          // "custom/logo",
          "clock",
          "hyprland/workspaces"
        ],
        "modules-center": [
          "hyprland/window"
        ],
        "modules-right": [
          "tray",
          "memory",
          "network",
          "wireplumber",
          "battery",
          "custom/notifications",
          "custom/power"
        ],
        "wlr/taskbar": {
          "format": "{icon}",
          "on-click": "activate",
          "on-click-right": "fullscreen",
          "icon-theme": "WhiteSur",
          "icon-size": 25,
          "tooltip-format": "{title}"
        },
        "hyprland/workspaces": {
          "on-click": "activate",
          "format": "{icon}",
          "format-icons": {
            "default": "",
            "1": "1",
            "2": "2",
            "3": "3",
            "4": "4",
            "5": "5",
            "6": "6",
            "7": "7",
            "8": "8",
            "9": "9",
            "10": "0",
            "active": "󱓻",
            "urgent": "󱓻"
          },
          "persistent_workspaces": {
            "1": [],
            "2": [],
            "3": [],
            "4": []
          }
        },
        "memory": {
          "interval": 5,
          "format": "󰍛 {}%",
          "max-length": 10
        },
        "tray": {
          "spacing": 10
        },
        "clock": {
          "tooltip-format": "{calendar}",
          "format-alt": "  {:%a, %d %b %Y}",
          "format": "  {:%I:%M %p}"
        },
        "network": {
          "format-wifi": "{icon} {essid}",
          "format-icons": [
            "󰤯",
            "󰤟",
            "󰤢",
            "󰤥",
            "󰤨"
          ],
          "format-ethernet": "󰀂",
          // "format-alt": "󱛇",
          "format-disconnected": "󰖪",
          "tooltip-format-wifi": "{icon} {essid}\n⇣{bandwidthDownBytes}  ⇡{bandwidthUpBytes}",
          "tooltip-format-ethernet": "󰀂  {ifname}\n⇣{bandwidthDownBytes}  ⇡{bandwidthUpBytes}",
          "tooltip-format-disconnected": "Disconnected",
          "on-click-right": "nmcli device disconnect wlp5s0",
          "on-click": "kitty --class floating 'nmtui'",
          "interval": 5,
          "nospacing": 1
        },
        "wireplumber": {
          "format": "{volume}% {icon} ",
          "format-bluetooth": "󰂰",
          "nospacing": 0,
          "tooltip-format": "Volume : {volume}%",
          "format-muted": "󰝟",
          "format-icons": {
            "headphone": "",
            "default": [
              "󰖀",
              "󰕾",
              ""
            ]
          },
          "on-click": "pamixer -t",
          "scroll-step": 1,
          "on-click-right": "kitty --class floating 'pulsemixer'"
        },
        "custom/notifications": {
          "format": "notifications",
          "tooltip": false,
          "on-click": "swaync-client -op"
        },
        "custom/logo": {
          "format": "  ",
          "tooltip": false,
          "on-click": "~/.config/rofi/launchers/misc/launcher.sh &"
        },
        "battery": {
          "format": "{icon} {capacity}%",
          "format-icons": {
            "charging": [
              "󰢜",
              "󰂆",
              "󰂇",
              "󰂈",
              "󰢝",
              "󰂉",
              "󰢞",
              "󰂊",
              "󰂋",
              "󰂅"
            ],
            "default": [
              "󰁺",
              "󰁻",
              "󰁼",
              "󰁽",
              "󰁾",
              "󰁿",
              "󰂀",
              "󰂁",
              "󰂂",
              "󰁹"
            ]
          },
          "format-full": "Charged ",
          "interval": 5,
          "states": {
            "warning": 25,
            "critical": 15
          },
          "tooltip": false
        },
        "custom/power": {
          "format": "󰤆 hibernate",
          "tooltip": false,
          "on-click": "systemctl hibernate"
        }
      }
    '';
  };
  home.activation.reloadWaybar = config.lib.dag.entryAfter [ "linkGeneration" ] ''
    $DRY_RUN_CMD ${pkgs.procps}/bin/pkill waybar || true
    $DRY_RUN_CMD ${pkgs.hyprland}/bin/hyprctl dispatch exec waybar
  '';
}
