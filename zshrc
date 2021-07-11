# sourcer les modules comme :
# source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Complétion
autoload -U compinit
compinit

#Insensible à la casse
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'

#compinstall
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin \
                             /usr/sbin /usr/bin /sbin /bin /usr/X11R6/bin
# Crée un cache des complétion possibles
# très utile pour les complétion qui demandent beaucoup de temps
# comme la recherche d'un paquet aptitude install moz<tab>
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh_cache
# des couleurs pour la complétion
# faites un kill -9 <tab><tab> pour voir :)
zmodload zsh/complist
setopt extendedglob
zstyle ':completion:*:*:kill:*:processes' list-colors "=(#b) #([0-9]#)*=36=31"

autoload colors; colors

# PS1
#export PS1="%B[%{$fg[red]%}%n%{$reset_color%}%b@%B%{$fg[cyan]%}%m%b%{$reset_color%}:%~%B]%b "

USER="%F{207}%n%f"
AT="%F{057}×%f"
MACHINE="%F{207}%m%f"
MASCOTTE="%F{057}(☼﹏☼)%f"
#MASCOTTE="%F{057}(✿◠‿◠)%f"
#DIR="%~"

export PS1="$USER$AT$MACHINE $MASCOTTE$DIR "

# Time right side
RPROMPT='%F{057}%~ %*%f'

# PS2
export PS2="%F{057}| %f"

#alias ls='ls -Gp' // to do: changer les couleurs
alias ls='ls -p'
alias ll='ls -Gp -lh'

alias sl='ls'
# Alias df -h
alias df='df -h'
# Un grep avec des couleurs :
export GREP_COLOR=31
alias grep='grep --color=auto'

export EDITOR=/usr/bin/vim

#Activer l'historique des commandes:
HISTFILE=~/.history
HISTSIZE=1000
SAVEHIST=1000
export HISTFILE SAVEHIST
