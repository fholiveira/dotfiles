# vim: filetype=sh
alias st='git status'
alias nosetests='nosetests --with-yanc'
alias grep='grep --color=auto'
alias vcat='vimcat'
alias vat='vimcat'
alias wow='git status'
alias such='git commit -am'
alias very='git'
alias fuck='sudo $(history -p \!\!)' 

case "$OSTYPE" in
  darwin*)  source ~/.dotfiles/platforms/osx/bash_aliases ;;
  linux*)   source ~/.dotfiles/platforms/linux/bash_aliases ;;
  bsd*)     ;;
  *)        ;;
esac
