# Lines configured by zsh-newuser-install
HISTFILE=~/.config/.histfile
HISTSIZE=10000
SAVEHIST=10000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/oskari/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

alias ls="ls --color=auto"
alias ll="exa -lb --icons --color=auto --group-directories-first --git"
alias gs="git status"
alias gc="git commit"
alias gap="git add -p"
alias gp="git push"

alias ss="maim -s -u"
alias ssc="maim -s -u | xclip -selection clipboard -t image/png -i"

autoload -U colors && colors
PS1="%{$fg[green]%}%n@%m%{$reset_color%}:%{$fg[blue]%}%~%{$reset_color%}$ "

if [ -f /usr/share/nnn/quitcd/quitcd.bash_zsh ]; then
    source /usr/share/nnn/quitcd/quitcd.bash_zsh
fi

export EDITOR=vim

export PATH="$HOME/.local/bin:$PATH"
