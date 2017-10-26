execute pathogen#infect()

" defaults
set nocompatible
set encoding=utf8
set ffs=unix,dos,mac
set backspace=indent,eol,start
set path=.,,**

" disable backups
set nobackup
set nowb
set noswapfile

" tabs
set tabstop=4
set shiftwidth=4
set expandtab
"set smarttab

" visuals
set background=dark
set cursorline
hi CursorLine cterm=NONE ctermbg=Black
set ruler
set rnu

" plugins
syntax enable
filetype plugin indent on

" nerdtree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_puppet_checkers=['puppetlint']
