#!/usr/bin/env bash
chmod +x makeAlias
echo "Please give all the input without any quotation"
read -p "Type shortcut : " shortcut
read -p "Type path or command : " path
x="alias "$shortcut"='"$path"'"
echo $x>>~/.bash_profile
source ~/.bash_profile
echo $?
