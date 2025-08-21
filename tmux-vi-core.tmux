#!/bin/sh
#
# tmux-vi-core: My personal core tmux settings with Vi keybindings.

# --- General Usability ---

# Enable mouse mode (tmux 2.1 and above)
# This lets you use your mouse to select panes, windows,
# resize panes, and scroll up and down.
tmux set -g mouse on

# Set the maximum number of lines to keep in the scrollback history.
# This increases how far back you can scroll in a pane.
tmux set-option -g history-limit 5000

# Start window numbering at 1, not 0.
# This makes it easier to switch to windows using the number keys,
# e.g., Prefix + 1 for the first window.
tmux set -g base-index 1

# Start pane numbering at 1, not 0.
# This creates a more consistent numbering scheme with the windows.
tmux setw -g pane-base-index 1

# Automatically renumber windows when a window is closed.
# This prevents gaps in the window numbers (e.g., 1, 2, 4, 5)
# and keeps them sequential.
tmux set -g renumber-windows on

# --- Visuals ---

# Enable true color support (24-bit color)
# This allows modern terminal themes and applications to display correctly.
tmux set-option -sa terminal-overrides ",xterm*:Tc"

# --- Keybindings ---

# Use Vi-style keybindings in copy mode (for scrolling and copying)
# This lets you navigate with h, j, k, l instead of the arrow keys.
tmux set-window-option -g mode-keys vi

# Set custom keybindings for Vi copy mode to mimic Vim.
# 'v' begins a selection (like visual mode in Vim).
# tmux bind-key -T copy-mode-vi v send-keys -X begin-selection

# 'Ctrl-v' begins a rectangular/block selection.
# tmux bind-key -T copy-mode-vi C-v send-keys -X rectangle-toggle

# 'y' copies the selection (yanks it) and exits copy mode.
# tmux bind-key -T copy-mode-vi y send-keys -X copy-selection-and-cancel
