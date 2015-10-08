# vim: filetype=sh

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source $DOTFILES/bash_aliases

#Disable password dialog in git
unset SSH_ASKPASS

#Fix terminal after window resize
shopt -s checkwinsize

# Key bindings, up/down arrow searches through history
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
bind '"\eOA": history-search-backward'
bind '"\eOB": history-search-forward'


function define_prompt() {
  if [[ "$COLORTERM" != "LIGHT" ]] ; then
    export PROMPT_PATTERN='{GREEN:bold}{virtualenv|➜ } {BLUE:bold}{location:vimstyle} {sourcecontrol} {PURPLE:bold}{symbol} {TEXT:reset}'
  else
    export PROMPT_PATTERN='{BLACK:bold}{virtualenv|➜ } {RED:bold}{location:vimstyle} {sourcecontrol} {line:break}{CYAN:bold}{symbol} {TEXT:reset}'
  fi

  export PS1="$(smartprompt --pattern="$PROMPT_PATTERN")"
}

eval "$(thefuck --alias)"

source $DOTFILES/platforms/current/bashrc

export PROMPT_COMMAND='define_prompt'
