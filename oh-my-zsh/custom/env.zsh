# homebrew
export HOMEBREW_BREW_GIT_REMOTE=https://mirrors.ustc.edu.cn/brew.git
export HOMEBREW_CORE_GIT_REMOTE=https://mirrors.ustc.edu.cn/homebrew-core.git
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles
export HOMEBREW_API_AUTO_UPDATE_SECS=86440

# java
unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)
        export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-amd64
        ;;
    Darwin*)
        export JAVA_HOME=/opt/homebrew/opt/openjdk
        ;;
    *)
        echo "UNKNOWN:${unameOut}"
        ;;
esac
export PATH=$JAVA_HOME/bin:$PATH

# golang
export GO111MODULE=on
export GOPATH=$HOME/go
# export GOROOT=/usr/lib/golang
export GOPROXY=https://goproxy.cn
export PATH=$GOPATH/bin:/usr/local/go/bin:$PATH

export PATH=$HOME/.local/bin:$PATH

# python
export PYTHON_KEYRING_BACKEND=keyring.backends.null.Keyring

# locate
export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"
export LANGUAGE="en_US.UTF-8"

# node
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# tree-sitter for emacs-29.1
export TREE_SITTER_ROOT=$HOME/.local
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:$HOME/.local/lib/pkgconfig
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/.local/lib

# lsp: https://emacs-lsp.github.io/lsp-mode/page/performance/#use-plists-for-deserialization
export LSP_USE_PLISTS=true
