colorscheme molokai
syntax on
set mouse=a
set tabstop=4
set shiftwidth=4
set nu
set colorcolumn=80
set listchars=tab:>-,trail:.,precedes:<,extends:>,eol:⏎,space:·
set smartindent
set hlsearch
:command WQ wq
:command Wq wq
:command W w
:command Q q
:command H %!xxd
:command HH %!xxd -r

" ctrl + arrow in tmux
if &term =~ '^screen'
	execute "set <xUp>=\e[1;*A"
	execute "set <xDown>=\e[1;*B"
	execute "set <xRight>=\e[1;*C"
	execute "set <xLeft>=\e[1;*D"
endif
