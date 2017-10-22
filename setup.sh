#!/bin/bash
# Setup all dot files in home directory.
dotfiles_dir="$(cd $(dirname $0) && pwd)"

# gitpromt
if [ ! -s $HOME/.git-prompt.sh ]; then
  ln -s $dotfiles_dir/git-prompt.sh $HOME/.git-prompt.sh
else
  echo "Skipping git-prompt.sh"
fi

# gitconfig
if [ ! -s $HOME/.gitconfig ]; then
  ln -s $dotfiles_dir/gitconfig $HOME/.gitconfig
else
  echo "Skipping gitconfig"
fi

# bash_profile
if [ ! -s $HOME/.bash_profile ]; then
  ln -s $dotfiles_dir/bash_profile $HOME/.bash_profile
else
  echo "Skipping bash_profile"
fi

# tmux.conf
if [ ! -s $HOME/.tmux.conf ]; then
  ln -s $dotfiles_dir/tmux.conf $HOME/.tmux.conf
else
  echo "Skipping tmux.conf"
fi

if [ ! -d $HOME/.tmux/plugins/tpm ]; then
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi
