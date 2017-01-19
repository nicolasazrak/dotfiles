#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -lh'

## PS1 RELATED THINGS 
#
# GREEN="\[$(tput setaf 2)\]"
# RESET="\[$(tput sgr0)\]"
# BOLD="\E[1m"
# PS1='${BOLD}[\u@\h \W]\$ ${RESET}'
# PS1='[\u@\h \W]\$ '
PS1='\[\e[1;29m\][\u@\h \W]\$\[\e[0m\] '

export VISUAL=gedit

export GOPATH=~/.go
export STACK_INSTALL_PATH=~/.local/bin

export PATH=~/.cabal/bin:$PATH
export PATH=~/apps:$PATH
export PATH=~/.local/bin:$PATH
export PATH=~/.stack/programs/x86_64-linux/ghc-7.10.3/bin/:$PATH
export PATH=$GOPATH/bin:$PATH

export DEVTOOLS=1

# Abrir la pestaña en la misma carpeta
# http://unix.stackexchange.com/questions/93476/gnome-terminal-keep-track-of-directory-in-new-tab
. /etc/profile.d/vte.sh


export RBENV_ROOT="${HOME}/.rbenv"

if [ -d "${RBENV_ROOT}" ]; then
  export PATH="${RBENV_ROOT}/bin:${PATH}"
  eval "$(rbenv init -)"
fi


# added by travis gem
[ -f ~/.travis/travis.sh ] && source ~/.travis/travis.sh
[ -f /usr/share/nvm/init-nvm.sh ] && source /usr/share/nvm/init-nvm.sh
alias npm='echo "ke ace boludo? Estamos usando yarn!!!"'

shopt -s checkwinsize
shopt -s globstar
