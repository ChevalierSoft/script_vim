""" vimrc

" this two values are set for compatibility with tmux
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" theme
colorscheme molokai

" settings
syntax on
set mouse=a
set tabstop=4
set shiftwidth=4
set nu
set colorcolumn=80
set listchars=tab:>-,trail:.,precedes:<,extends:>,eol:⏎,space:·
set smartindent
set hlsearch

"binds
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

" hide/hilight with F4
:nnoremap <F4> :set hlsearch! hlsearch?<CR>
