#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#alias ls='ls --color=auto'
alias ls="lsd --color=auto"
alias vim="nvim"
alias vvim="vim"


#PS1='[\u@\h \W]\$ '

# \u username
# \h hostname (short?)
# \w full path
# \W path shortened?
# \t time long
# \A time short


# TODO remove git branch if master or main
#      also show if the dir is not "gitted" ex. [×]
source .scripts/git-prompt.sh

# PS1='\[\033[1;34m\][\h:\W]$(__git_ps1 "--[%s]")\$\[\033[0m\] '
PS1='\[\033[1;34m\]'
PS1+='['
PS1+='\h:'
PS1+='\w'
PS1+=']'
PS1+='$(__git_ps1 "--[%s]")'
PS1+='\n\$\[\033[0m\] '
PS1+=''

export PATH=/home/martti/.scripts:$PATH

setxkbmap fi
setxkbmap -option caps:escape

autorandr mobile
(cat ~/.cache/wal/sequences &)

export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'

#powerline-daemon -q
#POWERLINE_BASH_CONTINUATION=1
#POWERLINE_BASH_SELECT=1
#. /usr/share/powerline/bindings/bash/powerline.sh

