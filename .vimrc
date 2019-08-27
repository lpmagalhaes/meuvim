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
"Javascript"
Plugin 'pangloss/vim-javascript'
"React"
Plugin 'maxmellon/vim-jsx-pretty'
"Outros
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'ervandew/supertab'
Plugin 'alvan/vim-closetag'
Plugin 'wakatime/vim-wakatime'
Plugin 'elzr/vim-json'

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
"colorscheme cobalt
"set background=dark
set ruler
set number
set showmode
set showcmd
set tabstop=4
set showmatch
set autoindent
set shiftwidth=4
set history=50
set t_Co=256
syntax on
set gfn=Monospace\ 10
set mousemodel=popup
set columns=88
" Curos sem piscar
set cursorline
set gcr=a:blinbkon0
set scrolloff=4
" barra de status
set laststatus=2
set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\
set statusline+=%{fugitive#statusline()}
" Titulo
set title
set titleold="Terminal"
set titlestring=%F
"Configurando NERDTree
map <silent> <F3> :NERDTreeToggle<CR>
let g:NERDTreeWinSize=50
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"Configurando AirLine
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter='unique_tail'
let g:airline#extensions#branch#enabled=1
"Mapeando git
noremap <leader>ga :Gwrite<CR>
noremap <leader>gc :Gcommit<CR>
noremap <leader>gsh :Gpush<CR>
noremap <leader>gll :Gpull<CR>
noremap <leader>gs :Gstatus<CR>
"Cores do jsx
let g:vim_jsx_pretty_colorful_config=1
"Atalho para selecionar tudo
map <C-a> <esc>ggVG<cr>
" Auto fechar
inoremap {<CR> {<CR>}<esc>O
inoremap [<CR> [<CR>]<esc>O
" swp files
set nobackup
set noswapfile
" busca centralizando a tela depois
nnoremap n nzzzv
nnoremap N Nzzzv
" passagem de buffer
noremap <leader>q :bp<CR>
noremap <leader>w :bn<CR>
noremap <leader>c :bd<CR>
" ajustes para nao travar 
cnoreabbrev Wq wq
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
" funcao para iluminar quando cursos encima 
function! AutoHighlightToggle()
	let @/ = ''
	if exists('#auto_highlight')
		au! auto_highlight
		augroup! auto_highlight
		setl updatetime=4000
		return 0
	else
		augroup auto_highlight
			au!
			au CursorHold * let @/ = '\V\<'.escape(expand('<cword>'), '\').'\>'
		augroup end
		setl updatetime=500
		return 1
	endif
endfunction
call AutoHighlightToggle()

" Close tag"
let g:closetag_filenames = "*.js,*.php,*.phtml"
" html in php
let php_htmlInStrings = 1
let php_smart_members=1

"" Remember cursor position
augroup vimrc-remember-cursor-position
	autocmd!
	autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup END
