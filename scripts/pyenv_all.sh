#!/usr/bin/env bash

out=""
if [ "$(pyenv version-name)" = "system" ]; then
    out+="🔴-"
else
    out+="🐍:$(pyenv version-name)-"
fi

if [ "$(pyenv global)" = "system" ]; then
    out+="🔴-"
else
    out+="🟢:$(pyenv global)-"
fi 

if [ "$(pyenv local)" = "system" ]; then
    out+="🔴"
else
    out+="🟢:$(pyenv local)"
fi

printf "$out"