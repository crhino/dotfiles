# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias ls='ls --color=auto'
alias ll='ls -lh'

alias vim="nvim"
export EDITOR="nvim"

# Git branch and dirty state in prompt.
GIT_PS1_SHOWCOLORHINTS=true
GIT_PS1_SHOWDIRTYSTATE=true
. ~/.git-prompt.sh

PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '

GOPATH=$HOME/go
PATH=$PATH:$HOME/.cargo/bin:$HOME/.cabal/bin:$HOME/bin:$GOPATH/bin:/usr/local/go/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib

export PATH
export GOPATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
[ -f ~/.z.sh ] && source ~/.z.sh
