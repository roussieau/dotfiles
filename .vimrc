"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" load plugins from vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let vundle manage vundle
Plugin 'VundleVim/Vundle.vim'

" utilities
Plugin 'kien/ctrlp.vim' " fuzzy find files
Plugin 'scrooloose/nerdtree' " file drawer, open with :NERDTreeToggle
Plugin 'benmills/vimux'
Plugin 'scrooloose/syntastic' " Verification des erreurs
Plugin 'bling/vim-airline'
Plugin 'ervandew/supertab'

" colorschemes
Plugin 'chriskempson/base16-vim'

call vundle#end()
filetype plugin indent on

set autoread " detect when a file is changed
set rnu
set clipboard=unnamed

" make backspace behave in a sane manner
set backspace=indent,eol,start

" Tab control
set expandtab " tabs ftw
set smarttab " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set tabstop=4 " the visible width of tabs
set softtabstop=4 " edit as if the tabs are 4 characters wide
set shiftwidth=4 " number of spaces to use for indent and unindent
set shiftround " round indent to a multiple of 'shiftwidth'

syntax on

set encoding=utf8
let base16colorspace=256  " Access colors present in 256 colorspace"
set t_Co=256 " Explicitly tell vim that the terminal supports 256 colors"
set background=dark
colorscheme solarized 
set number

set autoindent " automatically set indent of new line
set smartindent
set textwidth=80
set hidden
set showcmd

set laststatus=2 " show the satus line all the time

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" close NERDTree after a file is opened
let g:NERDTreeQuitOnOpen=1
" show hidden files in NERDTree
let NERDTreeShowHidden=1

"Control P
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"Vim-airline
let g:airline#extensions#tabline#enabled = 1

"Stop using arow 
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

:nnoremap <C-j> :bp<CR>
:nnoremap <C-n> :bn<CR>


" NERDTRee
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

map <C-m> :NERDTreeToggle<CR>
map <C-d> :bd<CR>
