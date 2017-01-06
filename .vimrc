set nocompatible              " be iMproved, required
filetype off                  " required

" required for airline
set encoding=utf-8

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-surround'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Enable 256 colors
set t_Co=256

colorscheme molokai

" Autoindent
set autoindent
set smartindent

" Basics
set nocompatible
set noexrc
set background=dark
set cpoptions=aABceFsmq
syntax on

" General
filetype plugin indent on
set autochdir
set backspace=indent,eol,start
set clipboard+=unnamed
set fileformats=unix,dos,mac
set mouse=a
set noerrorbells

" Vim UI
set cursorline
set incsearch
set laststatus=2
set lazyredraw
set linespace=0
set list
set listchars=tab:>-,trail:-
set matchtime=5
set nohlsearch
set nostartofline
set novisualbell
set number
set numberwidth=5
set report=0
set ruler
"set shortmess=aOstT
set showcmd
set showmatch
"set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]

" Text Formatting/Layout
set expandtab
set formatoptions=rq
set shiftwidth=2
set softtabstop=2
set tabstop=4

" Folding
set foldenable
set foldmarker={,}
set foldmethod=marker
set foldlevel=100
set foldopen=block,hor,mark,percent,quickfix,tag

set ttymouse=xterm2
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ vASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]\ 
set statusline=%F%m%r%h%w\ [%{&ff}][%Y]%=[%04l,%04v][%p%%][LEN=%L]\ #%{winnr()}\ 

"if version >= 700
"  au InsertEnter * hi StatusLine term=reverse ctermfg=5 ctermbg=0
""  au InsertEnter * hi LineNr ctermfg=White ctermbg=17
"  au InsertLeave * hi StatusLine term=reverse ctermfg=46 ctermbg=0
""  au InsertLeave * hi LineNr ctermfg=White ctermbg=17
"endif

" Ctrl-j/k inserts blank line below/above.
nnoremap <silent><C-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><C-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>

nnoremap <silent><C-h> :set paste<CR>i <Esc>l:set nopaste<CR>
nnoremap <silent><C-l> :set paste<CR>a <Esc>h:set nopaste<CR>

"imap <S-Space> <BS>

set tags=~/dev/tags

" Fold around syntactic constructs
set foldmethod=syntax

set colorcolumn=80

au BufNewFile,BufRead *.sv set filetype=verilog
au BufNewFile,BufRead *.svi set filetype=verilog
au BufNewFile,BufRead *.do set filetype=tcl

let g:localvimrc_ask=0
let g:localvimrc_sandbox=0

" Highlighting
hi Normal ctermfg=15 ctermbg=0
hi Visual ctermbg=DarkBlue
hi LineNr ctermfg=White ctermbg=17
"hi StatusLine term=reverse ctermfg=46 ctermbg=0
hi StatusLine ctermfg=46 ctermbg=0
hi StatusLineNC ctermfg=236 ctermbg=15
hi StatusLineModified ctermbg=166 ctermfg=0
hi StatusLineModifiedNC ctermbg=196 ctermfg=15
hi CursorLine cterm=NONE ctermbg=52

hi DiffAdd cterm=NONE ctermfg=bg ctermbg=Green gui=NONE guifg=bg guibg=Green
hi DiffDelete cterm=NONE ctermfg=bg ctermbg=Red gui=NONE guifg=bg guibg=Red
hi DiffChange cterm=NONE ctermfg=bg ctermbg=Yellow gui=NONE guifg=bg guibg=Yellow
hi DiffText cterm=NONE ctermfg=bg ctermbg=Magenta gui=NONE guifg=bg guibg=Magenta

if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Hack:h11
    " We need to tell the Airline plugin to use the Powerline font symbols
    let g:airline_powerline_fonts = 1
    "set guifont=Consolas:h11:cANSI
  endif
endif

