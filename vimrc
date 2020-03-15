set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugin for python syntax
Bundle 'vim-python/python-syntax'

" Plugin for awesome things
Bundle 'wellle/targets.vim'

" Colorscheme
Bundle 'tyrannicaltoucan/vim-deep-space'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" Put your non-Plugin stuff after this line
"
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_winsize = 20
colorscheme deep-space
set directory=$HOME/.vim/swp	" Directory for swp files
set undodir=~/.vim/undodir      " Set directories for undo files
set number                      " Set numbers
set spell
set backspace=indent,eol,start	" Allow backspacing over indent, line breaks and insertion start
set history=1000		" Bigger history
set showcmd			" Show incomplete commands at the bottom
set showmode			" Show current mode at the bottom
set autoread			" Automatically re-read files if unmodified inside Vim
set hidden			" Manage multiple buffers effectively
set laststatus=2		" Always display the status bar
set ruler			" Always show cursor position
set wildmenu			" Display command line's tab complete
set relativenumber		" Show line numbers on the current line and relative numbers
set background=dark		" Use colors that suit dark background
set title			" Set the window's title reflecting the current file
set autoindent			" New lines inherit the indentation of previous
filetype plugin indent on	" Smart auto indentation
set tabstop=4			" Show existing tab with 4 spaces width
set shiftwidth=2		" When indenting with '>' use 2 spaces
set expandtab			" On pressing tab, insert 4 spaces
set nowrap			" Don't wrap lines
set incsearch			" Search the next match as we type
set hlsearch			" Highlight searches by default
set ignorecase			" Ignore case when searching
set smartcase			" Unless we type capital
set encoding=utf-8		" Use an encoding that supports Unicode
set linebreak			" Wrap lines at convenient points
set scrolloff=3			" The number of lines to keep above and below cursor
set sidescrolloff=5		" The number of screen lines to keep to the left and right of the cursor
syntax enable			" Enable syntax highlighting
set laststatus=2        	" Show status line
set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)
set undofile            " Maintain undo history between sessions
nnoremap n nzz          " Match string and center screen
nnoremap N Nzz          " Match string backward and center screen
augroup toggle_relative_number  
autocmd InsertEnter * :setlocal norelativenumber
autocmd InsertLeave * :setlocal relativenumber
set shell=/bin/bash
set foldenable          " Enable folding
set foldlevelstart=10   " Open most of the folds by default
set foldnestmax=10      " Folds can be nested. Setting a max value protects from to many folds
set foldmethod=manual   " Method manual for opening folds
set foldcolumn=2        " Visually indicates folds
match ErrorMsg '\s\+$'  " Highlight trailing whitespace
autocmd BufWritePre *:%s/\s+$//e    " Remove trailing whitespaces automatically

" Mapping movements
map <C-K> :bprev<CR>        " Previous buffer with Ctrl+k
map <C-J> :bnext<CR>        " Next buffer with Ctrl+j
vnoremap . :normal.<CR>     " Execute . in Visual mode without :normal
vnoremap J :m '>+1<CR>gv=gv " Move one line down J
vnoremap K :m '<-2<CR>gv=gv " Move one line up with K
" Jump back to last edited buffer
nnoremap <C-b> <C-^>
inoremap <C-b> <esc><C-^>
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif 	" Set the cursor to the last position know
