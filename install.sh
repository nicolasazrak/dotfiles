#!/usr/bin/env bash

ln -s $PWD/.bashrc ~/.bashrc
ln -s $PWD/.gitconfig ~/.gitconfig
ln -s -b $PWD/vscode/settings.json ~/.config/Code/User/settings.json
ln -s -b $PWD/vscode/keybindings.json ~/.config/Code/User/keybindings.json
ln -s $PWD/.vimrc ~/.vimrc

# Fonts 
mkdir -p .config/fontconfig && ln -s $PWD/fonts.conf .config/fontconfig/fonts.conf
fc-cache -f -v


# Zsh
mkdir -p ~/.zsh && git clone git@github.com:DFurnes/purer.git ~/.zsh/pure
mkdir ~/.zfunctions && cp ~/.zsh/pure/pure.zsh ~/.zfunctions/prompt_pure_setup && cp ~/.zsh/pure/async.zsh ~/.zfunctions/async 
ln -s $PWD/.zshrc ~/.zshrc

