" Apredendo a configirar o vim

"Configure Vundle
set nocompatible
filetype off

"Vundle config
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"need this to install Vundle
Plugin 'gmarik/Vundle.vim'

"Plugins
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'othree/yajs.vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-fugitive'

"Chama todos plugins antes daqui
call vundle#end()
filetype plugin indent on

set encoding=utf-8
set ttyfast
"Arrumando backspace
set backspace=indent,eol,start
" mapeando leader
let mapleader=','
" Ajuste nas buscas
set hlsearch
set incsearch
set ignorecase
set smartcase
"Visual
set ruler
set number
set tabstop=4
set showmatch
syntax on
colorscheme monokai
set gfn=Monospace\ 10
" Curos sem piscar
set gcr=a:blinkon0
set scrolloff=3
" barra de status
set laststatus=2
set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\
set statusline+=%{fugitive#statusline()}
" Titulo
set title
set titleold="Terminal"
set titlestring=%F
"Configurando NERDTree
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeWinSize=50
"Configurando AirLine
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter='unique_tail'

"Mapeando git
noremap <leader>ga :Gwrite<CR>
noremap <leader>gc :Gcommit<CR>
noremap <leader>gsh :Gpush<CR>
noremap <leader>gll :Gpull<CR>
noremap <leader>gs :Gstatus<CR>
