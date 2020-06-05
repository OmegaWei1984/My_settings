set fileencodings=utf-8,ucs-bom,cp936,big5
set encoding=utf-8
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=C:\\Users\\Username\\.vim\\bundle\\Vundle.vim\\

call vundle#begin('C:\\Users\\Username\\.vim\\bundle\\')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'vim-airline/vim-airline'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/nerdtree'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'dracula/vim', { 'name': 'dracula' }

call vundle#end()            " required
filetype plugin indent on    " required

autocmd vimenter * NERDTree | wincmd p
"open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"open NERDTree automatically when vim starts up on opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
"map F2 to open NERDTree
map <F2> :NERDTreeToggle<CR>
"close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

set cursorline
syntax enable
set mouse=a
filetype indent on
set softtabstop=2
set ruler
set number
set hlsearch
set expandtab
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set t_Co=256
set wildmenu
set wildmode=longest:list,full
set backspace=indent,eol,start
set expandtab shiftwidth=4 softtabstop=4 smarttab
set completeopt=menu,menuone

colorscheme dracula

autocmd BufWritePost $MYVIMRC source $MYVIMRC
