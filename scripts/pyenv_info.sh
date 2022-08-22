#!/usr/bin/env bash
PANE_PATH=$(tmux display-message -p -F "#{pane_current_path}")
cd $PANE_PATH

OUTPUT=""

if [ "$(pyenv global)" = "system" ]; then
    OUTPUT+="🔴-"
else
    OUTPUT+="🐍:$(pyenv global)-"
fi 

if [ "$(pyenv local)" = "system" ]; then
    OUTPUT+="🔴"
else
    OUTPUT+="🐍:$(pyenv local)"
fi



printf "$OUTPUT"