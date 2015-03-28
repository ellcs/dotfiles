autoload -U promptinit && promptinit
autoload -U colors     && colors

unsetopt beep
setopt appendhistory autocd extendedglob notify
zstyle :compinstall filename '/home/alex/.zshrc'
#History
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000

# build with four cores
# export MAKEFLAGS='-j4'

# optical
# FORMAT OF PROMPT
if [ "$(id -u)" = "0" ]; then
  # ensure root has red promt
  PROMPT="%{$fg[red]%}%n%{$reset_color%}@%{$fg[red]%}%m %{$fg_no_bold[blue]%}%1~ %{$reset_color%}%# "
else
  PROMPT="%{$fg[green]%}%n%{$reset_color%}@%{$fg[red]%}%m %{$fg_no_bold[blue]%}%1~ %{$reset_color%}%# "
  # typical 
fi
RPROMPT="[%{$fg_no_bold[yellow]%}%?%{$reset_color%}]"

# highlighting:
# pacman -S zsh-syntax-highlighting
highlight=/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
if [ -e "$highlight" ]; then
  source $highlight
fi

# aliases
alias 'ls=ls -l --color'
alias 'l=ls'
alias 'll=ls'
alias lss='ls | sort'
alias lsg='ls -a| grep'
alias 'c=gcc'
alias 'cd..=cd ..'
alias '..=cd ..'
alias 'pdf=okular'
alias 'fucking=sudo'
alias 'feh=feh -F'
alias 'beepoff=xset -b'
alias github='~/github'
alias gpa="git pull && git submodule foreach git pull"
alias gpas="git submodule foreach git pull"
# arch linux aliases
alias 'sc=sudo systemctl'
alias 'nc=sudo netctl'
