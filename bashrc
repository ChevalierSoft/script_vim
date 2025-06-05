# ~/.bashrc: executed by bash(1) for non-login shells.

# Note: PS1 and umask are already set in /etc/profile. You should not
# need this unless you want different defaults for root.
#PS1='${debian_chroot:+($debian_chroot)}\h:\w\$ '
#umask 022

export LS_OPTIONS='--color=auto'
eval "`dircolors`"
alias ls='ls $LS_OPTIONS'
alias ll='ls $LS_OPTIONS -l'
alias l='ls $LS_OPTIONS -lA'

PS1=""
PS1="$PS1"'\[\033[00m\]['
PS1="$PS1"'\[\033[35m\]\u'
PS1="$PS1"'\[\033[00m\]❀'
PS1="$PS1"'\[\033[35m\]\h'
PS1="$PS1"'\[\033[37m\] (✿◠‿◠)'
PS1="$PS1"'\[\033[36m\]\w'
PS1="$PS1"'\[\033[00m\]]'
PS1="$PS1"'\[\033[00m\]\$ '

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

