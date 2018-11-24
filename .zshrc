[ -f ~/.zshrc.env ] && source ~/.zshrc.env # Env specific

alias ls='ls --color=auto'
alias ll='ls -lh'

export LANG=en_US
export VISUAL=gedit
export EDITOR=nano
export TERM="xterm-256color"
export STACK_INSTALL_PATH=~/.local/bin
export NODE_VERSION="8.9.1"
export RBENV_ROOT="${HOME}/.rbenv"
export PURE_GIT_PULL=0
export ZSH=/home/nico/.oh-my-zsh
export PS1="(`basename \"$VIRTUAL_ENV\"`)$PS1"
export DISABLE_AUTO_TITLE="true" # Uncomment the following line to disable auto-setting terminal title.
[$(uname -s) = "Linux"] && export JAVA_HOME=/usr/lib/jvm/default # Just in Linux

export PATH=~/apps:$PATH
export PATH=~/go/bin:$PATH
export PATH=~/.local/bin:$PATH
export PATH=~/.nvm/versions/node/v$NODE_VERSION/bin:$PATH
export PATH="${RBENV_ROOT}/bin:${PATH}"

fpath=( "$HOME/.zfunctions" $fpath ~/.zfunc)
plugins=(virtualenv zsh-syntax-highlighting) # ZSH Plugins

eval "$(rbenv init -)"
source ~/.travis/travis.sh
source /usr/share/nvm/init-nvm.sh --no-use
source /etc/profile.d/vte.sh # http://unix.stackexchange.com/questions/93476/gnome-terminal-keep-track-of-directory-in-new-tab
source $ZSH/oh-my-zsh.sh
autoload -U promptinit; promptinit
prompt pure # https://github.com/dfurnes/purer, always load after source oh-my-zsh

# Fix for slow git operations https://superuser.com/questions/458906/zsh-tab-completion-of-git-commands-is-very-slow-how-can-i-turn-it-off
__git_files () { 
    _wanted files expl 'local files' _files     
}
