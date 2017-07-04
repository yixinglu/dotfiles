#!/usr/bin/env bash

# TODO: fasd, ranger

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

FILES="vimrc
gvimrc
vimperatorrc
spacemacs
gitconfig
gitignore
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
    cp -r $BASEDIR/oh-my-zsh/custom/plugins/* ~/.oh-my-zsh/custom/plugins/
fi

for file in $FILES; do
    dst_path=~/.$file
    echo "link file: $dst_path"
    rm -rf $dst_path
    ln -s $BASEDIR/$file $dst_path
done
