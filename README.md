dotfiles
========

Use `ln` and `git` to manage linux dot files.

Usage of `ln`
-------------

    ln -s /path/to/dotfiles/.vimrc ~/.vimrc
    ln -s `pwd`/.vimrc ~/.vimrc

Install
-------

    $ git clone --recursive https://github.com/yixinglu/dotfiles.git
    $ cd dotfiles
    $ ./install.sh

macOS
-----

### brew install

* aria2
* fasd
* fzf
* navi
* ripgrep
* youtube-dl
* z

### brew cask install

* clashx
* v2rayx
* shadowsocksx-ng

Docker
------

Use `docker` to unify development environment.

TODO
----

- [ ] Configure `spacemacs`
- [ ] Configure terminal color
- [X] Install `ccls`
- [X] Improve `oh-my-zsh`
- [ ] Use `docker-compose` to manage volumes and docker startup
- [X] Install `fasd`/`fzf`/`navi`/`ripgrep` tools
- [X] Configure `golang` runtime
- [X] Install `graphviz`
- [ ] Mount dotfiles volume to container

Reference
---------

1. [Google: manage dotfiles with GitHub](https://www.google.com/#q=manage+dotfiles+with+GitHub)
2. [Your unofficial guide to dotfiles on GitHub](https://dotfiles.github.io/)
3. [Managing Your Dotfiles](http://www.anishathalye.com/2014/08/03/managing-your-dotfiles/)
