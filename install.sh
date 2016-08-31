#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# vim
rm -f ~/.vimrc
ln -s ${BASEDIR}/vimrc ~/.vimrc

# git
rm -f ~/.gitconfig
ln -s ${BASEDIR}/gitconfig ~/.gitconfig

# bash
rm -f ~/.bash_aliases
ln -s ${BASEDIR}/bash_aliases ~/.bash_aliases

# tmux
rm -f ~/.tmux.conf
ln -s ${BASEDIR}/tmux.conf ~/.tmux.conf

