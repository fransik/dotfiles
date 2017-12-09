" package management
runtime bundle/vim-pathogen/autoload/pathogen.vim
set sessionoptions-=options
execute pathogen#infect()

" defaults
set nocompatible
set encoding=utf8
set ffs=unix,dos,mac
set backspace=indent,eol,start
set path=.,,**

" disable backups
set nobackup
set nowritebackup
set noswapfile

" tabs
set tabstop=2
set shiftwidth=2
set expandtab
"set smarttab

" visuals
set background=dark
set cursorline
hi CursorLine cterm=NONE ctermbg=Black
set ruler
set rnu
set showcmd
set wildmenu

" searching
set incsearch
set hlsearch
set scrolloff=5

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
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_puppet_checkers=['puppetlint']
let g:syntastic_javascript_checkers = ['eslint']
