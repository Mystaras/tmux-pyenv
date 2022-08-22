#!/usr/bin/env bash

if [ "$(pyenv version-name)" = "system" ]; then
    printf "🔴"
else
    printf "🐍:$(pyenv version-name)"
fi  
# printf "AAA 🐍"