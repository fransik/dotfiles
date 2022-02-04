set nocompatible
set nobackup
set nowritebackup
set noswapfile

syntax enable

set mouse=a
set backspace=indent,eol,start

set tabstop=4
set shiftwidth=4
set expandtab

set hlsearch
set showmatch
set ignorecase
set smartcase
set incsearch

set linebreak
set wrap

"truecolor
"if (has("termguicolors"))
"    set termguicolors
"endif

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

set background=dark
set cursorline
set ruler
set number
set relativenumber
set showmode
set showcmd
set wildmenu

hi CursorLine cterm=NONE ctermbg=black guibg=black
hi ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

filetype plugin indent on
