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

" key binds for tmux
nnoremap <silent> <C-Right> <c-w>l
nnoremap <silent> <C-Left> <c-w>h
nnoremap <silent> <C-Up> <c-w>k
nnoremap <silent> <C-Down> <c-w>j

" ctrl + arrow in tmux
if &term =~ '^screen'
	execute "set <xUp>=\e[1;*A"
	execute "set <xDown>=\e[1;*B"
	execute "set <xRight>=\e[1;*C"
	execute "set <xLeft>=\e[1;*D"
endif

" F7 will show hexdump of the file, while f8 convert it to ascii
:nnoremap <F7> :H<CR>
:nnoremap <F8> :HH<CR>
