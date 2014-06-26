# homebrew
set -x PATH /usr/local/bin /usr/local/sbin $PATH
set -x GOPATH $HOME/dev/go-workspace

# rbenv
set rbenv_path $HOME/.rbenv/bin $HOME/.rbenv/shims
set -gx PATH $rbenv_path $PATH 
rbenv rehash > /dev/null ^&1

# cask
set cask_path $HOME/.cask/bin
set -gx PATH $cask_path $PATH

# MacPorts
set -x PATH /opt/local/bin /opt/local/sbin $PATH
