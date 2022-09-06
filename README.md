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
* fzf
* fasd # depended by spacemacs
* navi
* ripgrep
* youtube-dl
* z

### brew cask install

* clashx
* v2rayx
* shadowsocksx-ng

### iTerm2 Configuration

- [Key Mappings](https://apple.stackexchange.com/a/204802/472025)

LSP
---

### python

```bash
$ pip3 install --user python-lsp-server yapf
```

Docker
------

Use `docker` to unify development environment.

Preinstall
----------

```bash
# Install fasd
$ cd $ZSH/custom/plugins/fasd
$ sudo make install
# Install navi
$ cd $ZSH/custom/navi
$ sudo make install
```

TODO
----

- [ ] Configure `spacemacs`
- [ ] Configure terminal color
- [X] Install `ccls`
- [X] Improve `oh-my-zsh`
- [X] Use `docker-compose` to manage volumes and docker startup
- [X] Install `fasd`/`fzf`/`navi`/`ripgrep` tools
- [X] Configure `golang` runtime
- [X] Install `graphviz`
- [X] Mount dotfiles volume to container

Reference
---------

1. [Google: manage dotfiles with GitHub](https://www.google.com/#q=manage+dotfiles+with+GitHub)
2. [Your unofficial guide to dotfiles on GitHub](https://dotfiles.github.io/)
3. [Managing Your Dotfiles](http://www.anishathalye.com/2014/08/03/managing-your-dotfiles/)
