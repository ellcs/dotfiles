autoload -U promptinit && promptinit
autoload -U colors     && colors

bindkey -v
bindkey -M viins 'jj' vi-cmd-mode


setopt appendhistory autocd extendedglob notify
zstyle :compinstall filename '/home/alex/.zshrc'
#History
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000


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
alias 'l=ls -l'
alias 'll=ls'
alias 'ls=ls --color'
alias 'c=gcc'
alias 'cd..=cd ..'
alias '..=cd ..'
alias 'pdf=okular'
alias 'fucking=sudo'
alias 'feh=feh -F'
alias 'beepoff=xset -b'
alias g='git'
alias gl='git log'
alias gs='git status'
alias gd='git diff'
alias gc='git commit'
alias commit="git commit"

alias 'f=file=$(fzf) && print -s "vim $file" && vim $file'
alias 'v=vim'
alias 'bim=vim'
alias 'cim=vim'

bindkey -e
bindkey -v

bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
bindkey '^w' backward-kill-word
bindkey '^r' history-incremental-search-backward

function zle-line-init zle-keymap-select {
    RPS1="${${KEYMAP/vicmd/-- NORMAL --}/(main|viins)/-- INSERT --}"
    RPS2=$RPS1
    zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select

export PATH=$PATH:/home/ellcs/.gem/ruby/2.4.0/bin
# build with four cores
# export MAKEFLAGS='-j4'
export ANDROID_HOME=/opt/android-sdk
export PATH=~/.gem/ruby/2.3.0/bin/:$PATH
export KEYTIMEOUT=1
export EDITOR=vim

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh