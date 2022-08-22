#!/usr/bin/env bash

if [ "$(pyenv global)" = "system" ]; then
    printf "🔴"
else
    printf "🟢:$(pyenv global)"
fi