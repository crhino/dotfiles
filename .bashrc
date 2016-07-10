# .bashrc

GOPATH=$HOME/go
PATH=$PATH:$HOME/.cargo/bin:$HOME/.cabal/bin:$HOME/bin:$GOPATH/bin:/usr/local/go/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib

export PATH
export GOPATH

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias ll='ls -lh'

# Git branch and dirty state in prompt.
GIT_PS1_SHOWCOLORHINTS=true
GIT_PS1_SHOWDIRTYSTATE=true
. ~/.git-prompt.sh

PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
