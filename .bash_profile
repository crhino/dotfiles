# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

GOPATH=$HOME/go
PATH=$HOME/.cabal/bin:$HOME/bin:$GOPATH/bin:/usr/local/go/bin:$HOME/.multirust/toolchains/stable/cargo/bin:$PATH
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib

export PATH
export GOPATH
