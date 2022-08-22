#!/usr/bin/env bash

if [ "$(pyenv local)" = "system" ]; then
    printf "🔴"
else
    printf "🟢:$(pyenv local)"
fi 