#!/usr/bin/env bash

ln -s $PWD/.bashrc ~/.bashrc
ln -s $PWD/.gitconfig ~/.gitconfig
ln -s -b $PWD/vscode/settings.json ~/.config/Code/User/settings.json
ln -s -b $PWD/vscode/keybindings.json ~/.config/Code/User/keybindings.json
ln -s $PWD/.vimrc ~/.vimrc
