 ##
 # Homebrew
 ##
 export PATH="/usr/local/bin:$PATH"
 export PATH="/usr/local/sbin:$PATH"

 ##
 # Homebrew bash completion
 ##
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# Git branch in prompt.

parse_git_branch() {

    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'

}

export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

# Set up composer 
PATH=$PATH:$HOME/.composer/vendor/bin

# Setup php
#export PATH=/usr/local/opt/php@7.0/bin:$PATH
#export PATH=/usr/local/opt/php@7.0/sbin:$PATH

# Flutter
export PATH=$PATH:$HOME/Development/flutter/bin
