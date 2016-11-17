#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# vim
rm -f ~/.vimrc ~/.gvimrc
ln -s ${BASEDIR}/vimrc ~/.vimrc
ln -s ${BASEDIR}/gvimrc ~/.gvimrc

# vimperator for firefox
rm -f ~/.vimperatorrc
ln -s ${BASEDIR}/vimperatorrc ~/.vimperatorrc

# git
rm -f ~/.gitconfig
ln -s ${BASEDIR}/gitconfig ~/.gitconfig

# bash
rm -f ~/.bash_aliases
ln -s ${BASEDIR}/bash_aliases ~/.bash_aliases

# tmux
rm -f ~/.tmux.conf
ln -s ${BASEDIR}/tmux.conf ~/.tmux.conf

# ssh_config
rm -f ~/.ssh/config
ln -s ${BASEDIR}/ssh_config ~/.ssh/config

# zsh
if [[ ! -d ~/.oh-my-zsh ]]; then
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi
rm -rf ~/.zshrc ~/.oh-my-zsh/custom/*.zsh
ln -s ${BASEDIR}/zsh/zshrc ~/.zshrc
ln -s ${BASEDIR}/zsh/custom/*.zsh ~/.oh-my-zsh/custom
