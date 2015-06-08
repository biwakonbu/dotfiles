# homebrew
set -x PATH /usr/local/bin /usr/local/sbin $PATH
set -x GOPATH $HOME/dev/go-workspace

# rbenv
set rbenv_path $HOME/.rbenv/bin $HOME/.rbenv/shims
set -gx PATH $rbenv_path $PATH
rbenv rehash > /dev/null ^&1

# pyenv
set pyenv_path $HOME/.pyenv/bin $HOME/.pyenv/shims
set -gx PATH $pyenv_path $PATH
pyenv rehash > /dev/null ^&1

# cask
set cask_path $HOME/.cask/bin
set -gx PATH $cask_path $PATH

# MacPorts
set -x PATH /opt/local/bin /opt/local/sbin $PATH

# MacOSX Docker ENV
if which boot2docker > /dev/null
  docker_init 
end
