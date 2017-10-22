# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

GOPATH=$HOME/go
PATH=$PATH:$HOME/.cargo/bin:$HOME/.cabal/bin:$HOME/bin:$GOPATH/bin:/usr/local/go/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib

export PATH
export GOPATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
