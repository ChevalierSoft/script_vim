# sourcer les modules comme :
# source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Complétion
autoload -U compinit
compinit

# Insensible à la casse
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'

# compinstall
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
#MASCOTTE="%F{057}ཀ_ཀ%f"
#DIR="%~"
#ROLE="%F{207}» %f"
ROLE="%F{207}× %f"

export PS1=" $USER$AT$MACHINE $MASCOTTE$DIR $ROLE"

# right side Time
RPROMPT='%F{057}%~ %*%f'

# PS2
export PS2="%F{057}| %f"

#alias ls='ls -Gp' // to do: changer les couleurs
#alias ls='ls -p --color'
#alias ll='ls -Gp -lh --color'

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

export D="/mnt/d"
export Git="/mnt/d/Git"
export dsk="/mnt/c/Users/ChevalierSoft/Desktop"

export USER=dait-atm
export MAIL=dait-atm@student.42.fr

export LS_COLORS='rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:ca=30;41:tw=30;96:ow=34;96:st=37;44:ex=01;95:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.dz=01;31:*.gz=01;31:*.lz=01;31:*.xz=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.rar=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.axv=01;35:*.anx=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.axa=00;36:*.oga=00;36:*.spx=00;36:*.xspf=00;36:';

