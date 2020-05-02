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
zstyle :compinstall filename '/home/alex/.zshrc'
unset SSH_ASKPASS

# History
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000

export PATH=~/.gem/ruby/2.3.0/bin:$PATH
export PATH=~/.gem/ruby/2.4.0/bin:$PATH
export PATH=~/.gem/ruby/2.5.0/bin:$PATH
export PATH=~/.gem/ruby/2.6.0/bin:$PATH
export PATH=~/.gem/ruby/2.7.0/bin:$PATH
export PATH=~/scripts:$PATH

# FORMAT OF PROMPT
if [ "$(id -u)" = "0" ]; then
  PROMPT="%{$fg[red]%}%n%{$reset_color%}@%{$fg[red]%}%m %{$fg_no_bold[blue]%}%1~ %{$reset_color%}%# "
else
  PROMPT="%(?..%{$fg[red]%})λ%{$reset_color%} "
fi

# highlighting:
# pacman -S zsh-syntax-highlighting
highlight_file=/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
if [ -e "$highlight_file" ]; then
  source $highlight_file
fi

auto_suggestions="$HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh"
if [ -e auto_suggestions ]; then
  source $auto_suggestions
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

alias 'se=(gimp &); sleep 0.3; gimp $(ls -d --sort=time ~/Pictures/screenshots/* | fzf -m | paste -d" " -s -)'
alias 'sx=pic=$(ls -d --sort=time ~/Pictures/screenshots/* | fzf) && xclip -selection clipboard -t image/png -i "$pic"'
alias g='git'
alias ga='git add'
alias gl='git log'
alias gs='git status'
alias gd='git diff'
alias gc='git commit'
alias gp='git pull'
alias gg='git gui'




alias 'vim=nvim'
alias 'f=file=$(fzf) && print -s "vim $file" && vim $file'
zle -N zle-line-init
zle -N zle-keymap-select


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f /usr/share/fzf/key-bindings.zsh ] && source /usr/share/fzf/key-bindings.zsh

export WORKON_HOME=$HOME/.virtual_envs
source /usr/bin/virtualenvwrapper.sh
