call plug#begin('~/.vim/plugged')
"snippets plugin
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'christoomey/vim-tmux-navigator'
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
autocmd BufNewFile,BufRead * setlocal formatoptions-=cro "disable autocomment options, help fo-tables

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
set infercase "dont ignor case in keyword completion
"set cursorline
set wildmenu
set wildmode=list:longest,list:full
set showcmd
set hidden
set history=100
set foldmethod=manual

set listchars=tab:▸\ ,eol:¬
	
"provide tab-completion for all file-related task
set path+=**

syntax on
colorscheme gruvbox
set background=dark

"highlight the mode indicator with bright green fg
hi ModeMsg cterm=bold ctermbg=46 ctermfg=232

set hlsearch
set incsearch

"enable Elite mode, no arrows
"let g:elite_mode=1 "dont work for me

"project settings
"set path=inc

"Ultisnips config
let g:UltiSnipsSnippetDirectories=['~/.vim/UltiSnips/', 'UltiSnips']

"MAPINGS
"no arrows in Escape mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
"no arrows in Insert mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>
"build mappings
map <f8> :w <CR> :silent make<CR> :silent !clear<CR> :!make <CR>
map <f9> :w <CR> :silent make<CR> :silent !clear<CR> :!make && clear && ./a.out<CR>
"nmap MK :make
"nmap MC :make clean<CR>

"other mappings
map tn :tabnew
"map <C-n> :NERDTreeToggle<CR>
