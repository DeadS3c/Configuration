set directory=$HOME/.vim/swp
set nocompatible		" Use Vim settings, rather than Vi settings
set softtabstop=4		" Indent by 4 spaces when hitting tab
set shiftwidth=4		" Indent by 4 spaces when auto-indenting
set tabstop=4			" Show existing tab with 4 spaces width
syntax on			" Enable sytax highlighthing
filetype indent on		" Enable indenting for files
set autoindent			" Enable auto indenting
set number			" Set line number
colorscheme desert		" Set nice looking colorscheme
set nobackup			" Disable backup files
set laststatus=2		" Show status line
set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)
set wildmenu			" Show commandline's tab complete options
nnoremap n nzz
nnoremap N Nzz
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
match ErrorMsg '\s\+$' 		" Highlight trailing withespace
autocmd BufWritePre * :%s/\s\+$//e  " Highlight trailing withespace
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif 	" Set the cursor to the last position know
