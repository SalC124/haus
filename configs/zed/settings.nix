{ ... }:
{
  home.file.".config/zed/generated/settings.json" = {
    force = true;
    text = ''
      // Zed settings
      //
      // For information on how to configure Zed, see the Zed
      // documentation: https://zed.dev/docs/configuring-zed
      //
      // To see all of Zed's default settings without changing your
      // custom settings, run `zed: open default settings` from the
      // command palette (cmd-shift-p / ctrl-shift-p)
      {
        "diff_view_style": "split",
        "context_servers": {
          "mcp-server-github": {
            "enabled": true,
            "remote": false,
            "settings": {
              "github_personal_access_token": "no",
            },
          },
        },
        "outline_panel": {
          "dock": "right",
        },
        "collaboration_panel": {
          "dock": "right",
        },
        "linked_edits": true,
        "colorize_brackets": true,
        "disable_ai": false,
        "show_edit_predictions": false,
        "edit_predictions": {
          "mode": "eager",
          "copilot": {
            "enable_next_edit_suggestions": false,
          },
          "provider": "copilot",
        },
        "git": {
          "inline_blame": {
            "show_commit_summary": false,
          },
        },
        "agent_servers": {
          "github-copilot-cli": {
            "favorite_config_option_values": {
              "model": ["claude-sonnet-4.6", "claude-opus-4.6", "claude-haiku-4.5"],
            },
            "type": "registry",
          },
          "github-copilot": {
            "default_model": "claude-opus-4.6",
            "default_mode": "Ask",
            "favorite_models": [
              "claude-opus-4.6",
              "claude-sonnet-4.6",
              "claude-haiku-4.5",
            ],
            "type": "registry",
          },
        },
        "preview_tabs": {
          "enable_preview_from_file_finder": true,
        },
        "semantic_tokens": "combined",
        "calls": {
          "mute_on_join": true,
        },
        "terminal": {
          "shell": "system",
        },
        "scrollbar": {
          "show": "always",
        },
        "lsp_document_colors": "inlay",
        "which_key": {
          "enabled": true,
        },
        "current_line_highlight": "all",
        "unnecessary_code_fade": 0.1,
        "show_wrap_guides": true,
        "rounded_selection": false,
        "project_panel": {
          "dock": "right",
          "entry_spacing": "comfortable",
          "hide_gitignore": false,
          "default_width": 240,
          "scrollbar": {
            "show": "always",
            "horizontal_scroll": true,
          },
        },
        "git_panel": {
          "dock": "right",
          "tree_view": true,
        },
        "ssh_connections": [
          {
            "host": "67.84.35.204",
            "username": "saltcal",
            "args": [],
            "projects": [
              {
                "paths": ["/home/saltcal"],
              },
            ],
            "nickname": "beta-compooper",
          },
        ],
        "icon_theme": "Catppuccin Mocha",
        "agent": {
          "dock": "left",
          "show_turn_stats": true,
          "single_file_review": true,
          "use_modifier_to_send": true,
          "notify_when_agent_waiting": "primary_screen",
          "favorite_models": [
            {
              "provider": "copilot_chat",
              "model": "claude-opus-4.6",
              "enable_thinking": false,
            },
            {
              "provider": "copilot_chat",
              "model": "claude-sonnet-4.6",
              "enable_thinking": false,
            },
            {
              "provider": "ollama",
              "model": "gemma2:2b",
              "enable_thinking": false,
            },
          ],
          "inline_assistant_model": {
            // "provider": "copilot_chat",
            "provider": "copilot_chat",
            // "model": "gpt-4.1"
            "model": "gpt-4o",
          },
          "default_model": {
            "provider": "copilot_chat",
            "model": "gpt-4o",
          },
          "commit_message_model": {
            "provider": "copilot_chat",
            "model": "claude-haiku-4.5",
          },
          "default_profile": "ask",
          "model_parameters": [],
        },
        // "file_watcher": {
        //   "exclude": [
        //     "**/.steam/**",
        //     "**/.local/share/Steam/**",
        //     "**/node_modules/**",
        //     "**/target/**"
        //   ]
        // },
        "vim_mode": true,
        "ui_font_size": 18,
        // "ui_font_family": ".SystemUIFont",
        "ui_font_family": "CaskaydiaCove Nerd Font",
        "buffer_font_size": 18,
        "buffer_font_family": "CaskaydiaCove Nerd Font",
        "ui_font_features": { "liga": true, "calt": true },
        "buffer_font_features": { "liga": true, "calt": true },
        "theme": {
          "mode": "dark",
          "light": "Catppuccin Latte",
          "dark": "Catppuccin Mocha",
        },
        // "experimental.theme_overrides": {
        //   "background": "#00000000",
        //   "background.appearance": "blurred",
        //   "border.variant": "#00000000",
        //   "editor.active_line.background": "#9c9ca240",
        //   "editor.background": "#00000030",
        //   "editor.gutter.background": "#00000030",
        //   "panel.background": "#00000030",
        //   "scrollbar.track.border": "#00000000",
        //   "status_bar.background": "#00000030",
        //   "tab.active_background": "#ffffff10",
        //   "tab.inactive_background": "#00000000",
        //   "tab_bar.background": "#00000030",
        //   "title_bar.background": "#00000030",
        //   "toolbar.background": "#00000030",
        // },
        "relative_line_numbers": "enabled",
        "tab_bar": {
          "show": true,
        },
        // "soft_wrap": "editor_width",
        "preferred_line_length": 80,
        "wrap_guides": [80, 120],
        "indent_guides": {
          "background_coloring": "disabled",
          "enabled": true,
          "coloring": "indent_aware",
        },
        "inlay_hints": {
          "show_background": true,
          "enabled": true,
          "show_type_hints": true,
          "show_parameter_hints": true,
          "show_value_hints": true,
          "show_other_hints": true,
        },
        // "auto_signature_help": false, // obstrusive
        "auto_update": false,
        "auto_install_extensions": {
          "catppuccin": true,
          "catppuccin-icons": true,
          "html": true,
          "java": true,
          "neocmake": true,
          "nix": true,
          "toml": true,
          "lua": true,
        },
        // "show_edit_predictions": false,
        "diagnostics": {
          "inline": {
            "enabled": true,
          },
        },
        "load_direnv": "shell_hook",
        "languages": {
          "Rust": {
            "show_edit_predictions": false,
            "indent_guides": {
              "background_coloring": "disabled",
            },
            "always_treat_brackets_as_autoclosed": true,
            "enable_language_server": true,
            "format_on_save": "off",
          },
          "Python": {
            "format_on_save": "off",
          },
          "Java": {
            "show_edit_predictions": false,
            "format_on_save": "off",
          },
          "Nix": {
            "format_on_save": "off",
          },
          "JavaScript": {
            "tab_size": 2,
            "format_on_save": "off",
          },
          "HTML": {
            "indent_guides": {
              "background_coloring": "disabled",
              "line_width": 1,
            },
            "tab_size": 2,
            "format_on_save": "on",
          },
          "CSS": {
            "tab_size": 2,
            "format_on_save": "off",
          },
          "C": {
            "format_on_save": "off",
            "tab_size": 4,
          },
        },
        "lsp": {
          "jdtls": {
            "initialization_options": {
              "bundles": [],
              "workspaceFolders": [
                "file:///home/saltcal/Code/School/25-26/APCS/Unit_2_ALGFEE/",
                "file:///home/saltcal/Code/School/25-26/APCS/Unit_6/",
              ],
            },
          },
          "rust-analyzer": {
            "initialization_options": {
              "inlayHints": {
                "closureCaptureHints": { "enable": true },
                "closureReturnTypeHints": { "enable": "always" },
                "discriminantHints": { "enable": "always" },
                "expressionAdjustmentHints": {
                  "enable": "always",
                  "disableReborrows": false,
                  "hideOutsideUnsafe": false,
                  "mode": "prefix",
                },
                "genericParameterHints": {
                  "lifetime": { "enable": true },
                  "type": { "enable": true },
                },
                "implicitDrops": { "enable": true },
                "impliedDynTraitHints": { "enable": true },
                "lifetimeElisionHints": {
                  "enable": "always",
                  "useParameterNames": false,
                },
                "maxLength": null,
                "parameterHints.missingArguments": { "enable": true },
                "rangeExclusiveHints": { "enable": false },
                "reborrowHints": { "enable": "mutable" },
                "renderColons": false,
              },
            },
          },
          "hls": {
            "initialization_options": {
              "haskell": {
                "formattingProvider": "fourmolu",
              },
            },
          },
        },
        "extend_comment_on_newline": false,
      }
    '';
  };
}
