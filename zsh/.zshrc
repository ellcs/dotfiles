autoload -U promptinit && promptinit
autoload -U colors     && colors

bindkey -v
bindkey -M viins 'jj' vi-cmd-mode
bindkey '^A' beginning-of-line
bindkey '^E' end-of-line
bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
bindkey '^w' backward-kill-word
bindkey '^r' history-incremental-search-backward
bindkey '^[[1;5C' emacs-forward-word
bindkey '^[[1;5D' emacs-backward-word


setopt appendhistory autocd extendedglob notify
#zstyle :compinstall filename '/home/alex/.zshrc'
#History


# optical
# FORMAT OF PROMPT
if [ "$(id -u)" = "0" ]; then
  # ensure root has red promt
  PROMPT="%{$fg[red]%}%n%{$reset_color%}@%{$fg[red]%}%m %{$fg_no_bold[blue]%}%1~ %{$reset_color%}%# "
else
  #PROMPT="%{$fg[green]%}%n%{$reset_color%}@%{$fg[red]%}%m %{$fg_no_bold[green]%}%1~ %{$reset_color%}%# "
  PROMPT="%(?..%{$fg[red]%})λ%{$reset_color%} "
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
alias 'la= ls -al'
alias 'll=ls'
alias 'ls=ls --color'
alias 'cd..=cd ..'
alias '..=cd ..'
alias 'pdf=okular'
alias 'beepoff=xset -b'
alias g='git'
alias ga='git add'
alias gl='git log'
alias gs='git status'
alias gd='git diff'
alias gc='git commit'
alias gp='git pull'
alias commit="git commit"

alias 'f=file=$(fzf) && print -s "vim $file" && vim $file'
alias 'v=vim'
alias 'bim=vim'
alias 'cim=vim'


function zle-line-init zle-keymap-select {
    RPS1="${${KEYMAP/vicmd/-- NORMAL --}/(main|viins)/-- INSERT --}"
    RPS2=$RPS1
    zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select

# build with four cores
# export MAKEFLAGS='-j4'
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
export ANDROID_HOME=/opt/android-sdk
export KEYTIMEOUT=1
export EDITOR=vim
export PATH=~/.gem/ruby/2.3.0/bin:$PATH
export PATH=~/.gem/ruby/2.4.0/bin:$PATH
export PATH=~/.gem/ruby/2.5.0/bin:$PATH
export PATH=~/.gem/ruby/2.6.0/bin:$PATH
export PATH=~/scripts:$PATH

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f /usr/share/fzf/key-bindings.zsh ] && source /usr/share/fzf/key-bindings.zsh
