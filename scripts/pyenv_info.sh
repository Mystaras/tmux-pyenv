#!/usr/bin/env bash
PANE_PATH=$(tmux display-message -p -F "#{pane_current_path}")
cd $PANE_PATH

OUTPUT=""
PYENV_GLOB="$(pyenv global)"
PYENV_LOC="$(pyenv local)"

if [ $PYENV_GLOB = "system" ]; then
    OUTPUT+="🔴-"
else
    OUTPUT+="🐍:$PYENV_GLOB-"
fi 

if [ $PYENV_LOC = "system" ]; then
    OUTPUT+="🔴"
else
    OUTPUT+="🐍:$PYENV_LOC"
fi

printf "$OUTPUT"