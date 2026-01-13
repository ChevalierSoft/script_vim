export LS_OPTIONS='--color=auto'
#eval "`dircolors`"
alias ls='ls $LS_OPTIONS'
alias ll='ls $LS_OPTIONS -l'
alias l='ls $LS_OPTIONS -lA'

PS1_symbol() {
  local ret=$?
  if [ "$ret" -eq 0 ]; then
    printf "\e[32m✓\e[0m "
  else
    printf "\e[31m𐄂\e[0m "
  fi
}
_random_color() {
    echo $((16 + RANDOM % 240))
}

PS1='$(PS1_symbol)'
PS1="$PS1"'\[\e[38;5;52m\]\u'
PS1="$PS1"'\[\e[38;5;$(_random_color)m\]❀\[\033[00m\]'
# PS1="$PS1"'\[\e[38;5;250m\]❀'
PS1="$PS1"'\[\e[38;5;88m\]\h'
# PS1="$PS1"'\[\033[37m\] (✿◠‿◠)'
PS1="$PS1"'\[\e[38;5;$(_random_color)m\]:\[\033[00m\]'
PS1="$PS1"'\[\e[38;5;210m\]\w'
PS1="$PS1"'\e[38;5;252m\] ♦'
PS1="$PS1"'\[\033[00m\] '

# PS1='\[\e[38;5;$(_random_color)m\]\u\[\033[00m\]'
# PS1="$PS1"'\[\e[38;5;$(_random_color)m\]❀\[\033[00m\]'
# PS1="$PS1"'\[\e[38;5;$(_random_color)m\]\h\[\033[00m\]'
# # PS1="$PS1"' \[\e[38;5;$(_random_color)m\](✿◠‿◠)\[\033[00m\]'
# PS1="$PS1"'\[\e[38;5;$(_random_color)m\]\w\[\033[00m\]'
# PS1="$PS1"'\[\e[38;5;$(_random_color)m\] 𐄂\[\033[00m\]'
# PS1="$PS1"' '

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

export PATH=$PATH:/usr/local/go/bin:~/go/bin

. "$HOME/.local/bin/env"
