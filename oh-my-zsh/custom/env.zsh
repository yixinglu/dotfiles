# brew
export HOMEBREW_BREW_GIT_REMOTE=https://mirrors.ustc.edu.cn/brew.git
export HOMEBREW_CORE_GIT_REMOTE=https://mirrors.ustc.edu.cn/homebrew-core.git
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles

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

# golang settings
export GO111MODULE=on
export GOPATH=$HOME/go
# export GOROOT=/usr/lib/golang
export GOPROXY=https://goproxy.cn

export PATH=$GOPATH/bin:/usr/local/go/bin:$PATH

export PATH=$HOME/.local/bin:$PATH

export PYTHON_KEYRING_BACKEND=keyring.backends.null.Keyring

# locate
export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"
export LANGUAGE="en_US.UTF-8"

