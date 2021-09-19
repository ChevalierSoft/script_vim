""" vimrc for windows

" compatibility
set termguicolors
set nocompatible
set backspace=2

" theme
" colorscheme molokai

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

" binds
:command WQ wq
:command Wq wq
:command W w
:command Q q

" hide/hilight searches
:nnoremap <F4> :set hlsearch! hlsearch?<CR>
