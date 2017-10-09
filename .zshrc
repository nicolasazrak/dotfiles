[ -f ~/.zshrc.env ] && source ~/.zshrc.env # Env specific

alias ls='ls --color=auto'
alias ll='ls -lh'

# export LANG=en_US.UTF-8
export VISUAL=gedit
export EDITOR=nano 
export TERM="xterm-256color"
export STACK_INSTALL_PATH=~/.local/bin
export NODE_VERSION="8.6.0"

export PATH=~/apps:$PATH
export PATH=~/go/bin:$PATH
export PATH=~/.local/bin:$PATH
export PATH=~/.nvm/versions/node/v$NODE_VERSION/bin:$PATH

fpath=( "$HOME/.zfunctions" $fpath )

# Abrir la pestaña en la misma carpeta
# http://unix.stackexchange.com/questions/93476/gnome-terminal-keep-track-of-directory-in-new-tab
. /etc/profile.d/vte.sh

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="agnoster" 
ZSH_THEME="" 

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git)
plugins=(virtualenv zsh-syntax-highlighting)

# Path to your oh-my-zsh installation.
export PURE_GIT_PULL=0
export ZSH=/home/nico/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

# https://github.com/dfurnes/purer
# always load after source oh-my-zsh 
autoload -U promptinit; promptinit
prompt pure
PS1="(`basename \"$VIRTUAL_ENV\"`)$PS1"

export RBENV_ROOT="${HOME}/.rbenv"
export PATH="${RBENV_ROOT}/bin:${PATH}"
eval "$(rbenv init -)"


[ -f ~/.travis/travis.sh ] && source ~/.travis/travis.sh
source /usr/share/nvm/init-nvm.sh --no-use

# Fix for slow git operations
# https://superuser.com/questions/458906/zsh-tab-completion-of-git-commands-is-very-slow-how-can-i-turn-it-off
__git_files () { 
    _wanted files expl 'local files' _files     
}
