[ -f ~/.zshrc.env ] && source ~/.zshrc.env # Env specific

## VARIABLES ##

export LANG=en_US
export VISUAL=gedit
export EDITOR=nano
export TERM="xterm-256color"
export STACK_INSTALL_PATH=~/.local/bin
export NODE_VERSION="8.9.1"
export RBENV_ROOT=~/.rbenv
export PURE_GIT_PULL=0
export PS1="(`basename \"$VIRTUAL_ENV\"`)$PS1"
export DISABLE_AUTO_TITLE="true" # Uncomment the following line to disable auto-setting terminal title.
export JAVA_HOME=/usr/lib/jvm/default # Just in Linux

## PATH ##

export PATH=~/bin:$PATH
export PATH=~/apps:$PATH
export PATH=~/go/bin:$PATH
export PATH=~/.local/bin:$PATH
export PATH=$RBENV_ROOT/bin:$PATH
export fpath=($fpath ~/.zfunc)

## SCRIPTS ##

[ -s "~/.travis/travis.sh" ] && source ~/.travis/travis.sh
[ -s "/usr/share/nvm/init-nvm.sh" ] && source /usr/share/nvm/init-nvm.sh --no-use
[ -s "/etc/profile.d/vte.sh" ] && source /etc/profile.d/vte.sh # http://unix.stackexchange.com/questions/93476/gnome-terminal-keep-track-of-directory-in-new-tab

eval "$(rbenv init -)"

# Fix for slow git operations https://superuser.com/questions/458906/zsh-tab-completion-of-git-commands-is-very-slow-how-can-i-turn-it-off
__git_files () {
    _wanted files expl 'local files' _files
}

## ALIAS ##

alias ls='ls --color=auto'
alias ll='ls -lh'

## PLUGINS ##

autoload -U promptinit; promptinit; prompt pure # https://github.com/dfurnes/purer, always load after source oh-my-zsh

source ~/.zfunc/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zfunc/zsh-history-substring-search/zsh-history-substring-search.zsh
source ~/.zfunc/zsh-autosuggestions/zsh-autosuggestions.zsh

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
