call plug#begin('~/.vim/plugged')
Plug 'dracula/vim' " color scheme
Plug 'morhetz/gruvbox'
Plug 'romainl/Apprentice' " color scheme
Plug 'sjl/badwolf'
Plug 'w0ng/vim-hybrid' " color scheme
Plug 'junegunn/seoul256.vim' " color sheme
Plug 'sickill/vim-monokai' " color scheme
"Plug 'chriskempson/base16-vim'
"Plug 'valloric/youcompleteme'
"Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'jiangmiao/auto-pairs'
"Plug 'jimmysitu/pyclewn'
"Plug 'newclear/vim-pyclewn'
"Plug 'Shougo/neocomplcache.vim'
call plug#end()

"fix .cpp error: ValueError: Still no compile flags, no completions yet.
"let g:ycm_global_ycm_extra_conf='~/microcontroller/stm32f103x/proj7_C_emacs_working/.ycm_extra_conf.py'

autocmd VimEnter * hi Normal ctermbg=none

set nocompatible
set ruler
set number
set laststatus=2
set scrolloff=3
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set wrap
set linebreak
set ignorecase
set smartcase
"set cursorline
set wildmenu
set wildmode=list:longest,list:full
set showcmd
set hidden
set history=100

syntax on
colorscheme gruvbox
set background=dark

set hlsearch
set incsearch

"project settings
set path+=./inc
"mapings
nmap MK :make
nmap MC :make clean<CR>
map tn :tabnew
"map <C-n> :NERDTreeToggle<CR>
