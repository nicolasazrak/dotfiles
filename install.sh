#!/usr/bin/env bash

# General files
ln -s $PWD/.bashrc ~/.bashrc
ln -s $PWD/.vimrc ~/.vimrc
ln -s $PWD/.gitconfig ~/.gitconfig

# VSCode
mkdir -p  ~/.config/Code/User
ln -s -b $PWD/vscode/settings.json ~/.config/Code/User/settings.json
ln -s -b $PWD/vscode/keybindings.json ~/.config/Code/User/keybindings.json

# Fonts
mkdir -p .config/fontconfig && ln -s $PWD/fonts.conf ~/.config/fontconfig/fonts.conf
fc-cache -f -v

# ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
mkdir -p ~/.zsh && git clone git@github.com:DFurnes/purer.git ~/.zsh/pure
mkdir ~/.zfunctions && cp ~/.zsh/pure/pure.zsh ~/.zfunctions/prompt_pure_setup && cp ~/.zsh/pure/async.zsh ~/.zfunctions/async
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
ln -s $PWD/.zshrc ~/.zshrc

