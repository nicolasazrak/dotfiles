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

export GOPATH=~/go
export STACK_INSTALL_PATH=~/.local/bin

export PATH=~/.cabal/bin:$PATH
export PATH=~/apps:$PATH
export PATH=~/.local/bin:$PATH
export PATH=~/.stack/programs/x86_64-linux/ghc-7.10.3/bin/:$PATH
export PATH=$GOPATH/bin:$PATH


export RBENV_ROOT="${HOME}/.rbenv"

if [ -d "${RBENV_ROOT}" ]; then
  export PATH="${RBENV_ROOT}/bin:${PATH}"
  eval "$(rbenv init -)"
fi


# added by travis gem
[ -f ~/.travis/travis.sh ] && source ~/.travis/travis.sh
[ -f /usr/share/nvm/init-nvm.sh ] && source /usr/share/nvm/init-nvm.sh


alias npm='echo "ke ace boludo? Estamos usando yarn!!!"'

##
## Source: https://github.com/mrzool/bash-sensible/blob/master/sensible.bash ##
##

# Update window size after every command
shopt -s checkwinsize

# Turn on recursive globbing (enables ** to recurse all directories)
shopt -s globstar

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;


## SMARTER TAB-COMPLETION (Readline bindings) ##

# Perform file completion in a case insensitive fashion
bind "set completion-ignore-case on"

# Treat hyphens and underscores as equivalent
bind "set completion-map-case on"

# Display matches for ambiguous patterns at first tab press
bind "set show-all-if-ambiguous on"

# Immediately add a trailing slash when autocompleting symlinks to directories
bind "set mark-symlinked-directories on"


## SANE HISTORY DEFAULTS ##

# Append to the history file, don't overwrite it
shopt -s histappend

# Save multi-line commands as one command
shopt -s cmdhist

# Record each line as it gets issued
PROMPT_COMMAND='history -a'

# Huge history. Doesn't appear to slow things down, so why not?
HISTSIZE=500000
HISTFILESIZE=100000

# Avoid duplicate entries
HISTCONTROL="erasedups:ignoreboth"

# Don't record some commands
export HISTIGNORE="&:[ ]*:exit:ls:bg:fg:history:clear"



bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
bind '"\e[C": forward-char'
bind '"\e[D": backward-char'


## BETTER DIRECTORY NAVIGATION ##

# Correct spelling errors during tab-completion
shopt -s dirspell 2> /dev/null
# Correct spelling errors in arguments supplied to cd
shopt -s cdspell 2> /dev/null


shopt -s cdable_vars
export proyectos="$HOME/proyectos"
export dotfiles="$proyectos/dotfiles"


# Abrir la pestaña en la misma carpeta
# http://unix.stackexchange.com/questions/93476/gnome-terminal-keep-track-of-directory-in-new-tab
. /etc/profile.d/vte.sh


