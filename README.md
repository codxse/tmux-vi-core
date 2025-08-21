# tmux-vi-core

My personal core tmux configuration as a plugin. It sets up sensible defaults and Vi-style keybindings for copy mode.

### Features

- Enables mouse support.
- Sets history limit to 5000 lines.
- Starts window and pane numbering at 1.
- Automatically renumbers windows.
- Enables 24-bit True Color.
- Sets copy mode keys to `vi`.
- Adds `v`, `C-v`, and `y` keybindings for selection and yanking, just like in Vim.

### Installation

Requires [TPM](https://github.com/tmux-plugins/tpm).

Add this plugin to your `.tmux.conf`:

```tmux
set -g @plugin 'codxse/tmux-vi-core'
```

```

```
