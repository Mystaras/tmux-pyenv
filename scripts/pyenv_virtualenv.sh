#!/usr/bin/env bash

# Hard to implement since it requires to get the envc variables of the shell

PANE_PID=$(tmux display-message -p -F "#{pane_pid}")
PANE_TTY=$(tmux display-message -p -F "#{pane_tty}")

if [ "$(pyenv version-name)" = "system" ]; then
    printf "🔴"
else
    printf "🐍:$(pyenv version-name)"
fi 