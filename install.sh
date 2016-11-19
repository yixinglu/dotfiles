#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

FILES="vimrc
gvimrc
vimperatorrc
spacemacs
gitconfig
bash_aliases
tmux.conf
tmux/plugins/tpm
ssh/config
clang-format
zshrc
oh-my-zsh/custom/*.zsh
"

if [[ ! -d ~/.oh-my-zsh ]]; then
    echo "install oh-my-zsh."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

for file in $FILES; do
    echo "link file: ~/.$file"
    rm -f ~/.$file
    ln -s $BASEDIR/$file ~/.$file
done
