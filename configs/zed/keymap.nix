{ ... }:
{
  home.file.".config/zed/generated/keymap.json" = {
    force = true;
    text = ''
      // Zed keymap
      //
      // For information on binding keys, see the Zed
      // documentation: https://zed.dev/docs/key-bindings
      //
      // To see the default key bindings run `zed: open default keymap`
      // from the command palette.
      [
        // {
        //   "context": "Workspace",
        //   "bindings": {
        //     // "shift shift": "file_finder::Toggle"
        //   }
        // },
        // {
        //   "context": "Editor",
        //   "bindings": {
        //     // "j k": ["workspace::SendKeystrokes", "escape"]
        //   }
        // },
        {
          // "context": "VimControl",
          // "context": "VimControl && !menu",
          // "context": "VimControl",
          "context": "((Editor && mode == full) && vim_mode == normal) || (ProjectPanel && not_editing)",
          "bindings": {
            "space t f": "file_finder::Toggle",
            "space h": "workspace::ActivatePaneLeft",
            "space l": "workspace::ActivatePaneRight",
            "space k": "workspace::ActivatePaneUp",
            "space j": "workspace::ActivatePaneDown",
            "space f": "editor::Format",
            "space i h": "editor::ToggleInlayHints",
            "space n": "project_panel::Toggle",
          },
        },
        {
          "context": "Terminal",
          "bindings": {
            // --- tmux-style pane navigation ---
            "ctrl-space ctrl-h": "workspace::ActivatePaneLeft",
            "ctrl-space ctrl-j": "workspace::ActivatePaneDown",
            "ctrl-space ctrl-k": "workspace::ActivatePaneUp",
            "ctrl-space ctrl-l": "workspace::ActivatePaneRight",

            "alt-h": "workspace::ActivatePaneLeft",
            "alt-j": "workspace::ActivatePaneDown",
            "alt-k": "workspace::ActivatePaneUp",
            "alt-l": "workspace::ActivatePaneRight",

            "ctrl-space ctrl-alt-n": "workspace::NewTerminal",
            "alt-n": "workspace::NewTerminal",

            // --- tmux-style pane splitting ---
            "ctrl-space ctrl-%": "pane::SplitVertical",
            "ctrl-space ctrl-\"": "pane::SplitHorizontal",

            // --- tmux-style terminal toggle & editor jump ---
            "ctrl-space t": "terminal_panel::Toggle",
            "ctrl-space e": "editor::ToggleFocus",

            // // --- tmux-style pane resizing (H/J/K/L) ---
            // "ctrl-space H": ["vim::ResizePaneLeft", { "px": 10 }],
            // "ctrl-space J": ["vim::ResizePaneDown", { "px": 10 }],
            // "ctrl-space K": ["vim::ResizePaneUp", { "px": 10 }],
            // "ctrl-space L": ["vim::ResizePaneRight", { "px": 10 }],
          },
        },
        {
          "context": "VimControl && !menu && extension == md",
          "bindings": {
            "j": ["vim::Down", { "display_lines": true }],
            "k": ["vim::Up", { "display_lines": true }],
            "0": ["vim::StartOfLine", { "display_lines": true }],
            "$": ["vim::EndOfLine", { "display_lines": true }],
          },
        },
        {
          "context": "(Editor && (showing_code_actions || showing_completions))",
          "bindings": {
            "ctrl-j": "editor::ContextMenuNext",
            "ctrl-k": "editor::ContextMenuPrevious",
          },
        },
        {
          "context": "FileFinder > Picker > Editor",
          "bindings": {
            "ctrl-j": "menu::SelectNext",
            "ctrl-k": "menu::SelectPrevious",
          },
        },
        {
          "context": "(Editor && showing_completions)",
          "bindings": {
            "ctrl-enter": "editor::ConfirmCompletionReplace",
          },
        },
        {
          "bindings": {
            "ctrl-q": "zed::Quit",
          },
        },
        {
          "bindings": {
            "ctrl-alt-x": "agent::ToggleFocus",
          },
        },
        {
          "bindings": {
            "ctrl-alt-z": "workspace::ToggleLeftDock",
          },
        },
        {
          "context": "AgentPanel",
          "bindings": {
            "ctrl-alt-z": null,
          },
        },
        {
          "context": "(ProjectPanel && not_editing)",
          "bindings": {
            "a": "project_panel::NewFile",
          },
        },
        {
          "context": "(ProjectPanel && not_editing)",
          "bindings": {
            "space": null,
          },
        },
        {
          "context": "(ProjectPanel && not_editing)",
          "bindings": {
            "r": "project_panel::Rename",
          },
        },
        {
          "context": "(ProjectPanel && not_editing)",
          "bindings": {
            "shift-r": null,
          },
        },
        {
          "context": "(ProjectPanel && not_editing)",
          "bindings": {
            "d": "project_panel::Delete",
          },
        },
        {
          "context": "(ProjectPanel && not_editing)",
          "bindings": {
            "%": null,
          },
        },
        {
          "context": "Editor",
          "bindings": {
            "ctrl-shift-k": null,
          },
        },
        {
          "context": "Workspace",
          "bindings": {
            "ctrl-shift-r": [
              "task::Rerun",
              {
                "reevaluate_context": false,
              },
            ],
          },
        },
        {
          "context": "AcpThread > Editor",
          "unbind": {
            "ctrl-enter": "agent::ChatWithFollow",
          },
        },
        {
          "context": "!AcpThread > Editor && mode == full",
          "unbind": {
            "ctrl-enter": "assistant::InlineAssist",
          },
        },
        {
          "context": "Terminal",
          "unbind": {
            "ctrl-enter": "assistant::InlineAssist",
          },
        },
      ]
    '';
  };
}
