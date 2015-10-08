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

if [ -f ~/.dotfilesrc ]; then
  source ~/.dotfilesrc
fi

if [ -z "$DOTFILES" ]; then
  export DOTFILES=~/.dotfiles
fi

function dotfiles() {
  chmod +x $DOTFILES/scripts/dotfiles

  case $1 in
    browse)
      cd $DOTFILES
    ;;
    *)
      $DOTFILES/scripts/dotfiles "${@:1}" 
    ;;
  esac
}

source $DOTFILES/platforms/current/bash_profile
source ~/.bashrc
