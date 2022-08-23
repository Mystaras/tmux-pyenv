#!/usr/bin/env bash

PANE_PATH=$(tmux display-message -p -F "#{pane_current_path}")
cd $PANE_PATH

PYENV_GLOB="$(pyenv global)"
PYENV_LOC="$(pyenv local)"

if [ $PYENV_GLOB != "system" ] || [ $PYENV_LOC != "system" ]; then
    OUTPUT="#[bold]🐍env #[nobold]"

    if ! [ $PYENV_GLOB = "system" ]; then
        OUTPUT+="$PYENV_GLOB"
    fi 

    if ! [ $PYENV_LOC = "system" ]; then
        if ! [ $PYENV_GLOB = "system" ]; then
            OUTPUT+="-"
        fi 
        OUTPUT+="📁:$PYENV_LOC"
    fi
else
    OUTPUT=""
fi

printf "$OUTPUT"