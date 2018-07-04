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
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'ervandew/supertab'
Plugin 'alvan/vim-closetag'

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
set autoindent
set shiftwidth=4
syntax on
colorscheme monokai
set gfn=Monospace\ 10
set mousemodel=popup
" Curos sem piscar
set cursorline
set gcr=a:blinbkon0
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
map <silent> <F3> :NERDTreeToggle<CR>
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
"Cores do jsx
let g:vim_jsx_pretty_colorful_config=1
"Atalho para selecionar tudo
map <C-a> <esc>ggVG<cr>
" Auto fechar
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
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
