# vim: filetype=sh

export GOPATH=$HOME/projects/go            #GO environment

export PATH=$PATH:~/.gem/ruby/2.1.0/bin    #RubyGems
export PATH=$PATH:~/.cabal/bin             #Cabal - Haskell
export PATH=$PATH:~/.local/bin             #Pip - Python 
export PATH=$PATH:~/.npm/bin               #npm - NodeJS
export PATH=$PATH:~/.bin                   #User scripts
export PATH=$PATH:$GOPATH/bin              #Go
export PATH=$PATH:/usr/local/heroku/bin    #Heroku

export GEM_HOME=~/.gem/ruby/2.1.0/bin

case "$OSTYPE" in
  darwin*)  source ~/.dotfiles/platforms/osx/bash_profile ;;
  linux*)   source ~/.dotfiles/platforms/linux/bash_profile ;;
  bsd*)     ;;
  *)        ;;
esac

source ~/.bashrc
