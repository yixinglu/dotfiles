#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

FILES="vimrc
gvimrc
vimperatorrc
spacemacs
gitconfig
bash_aliases
tmux.conf
ssh/config
clang-format
zshrc
oh-my-zsh/custom/*.zsh
"

if [[ ! -d ~/.oh-my-zsh ]]; then
    echo "install oh-my-zsh."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

if [[ ! -d ~/.tmux/plugins/tpm ]]; then
    echo "install tmux plugin manager."
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

for file in $FILES; do
    echo "link file: ~/.$file"
    rm -f ~/.$file
    ln -s $BASEDIR/$file ~/.$file
done
