call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'morhetz/gruvbox'
Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'
Plug 'preservim/nerdtree'
Plug 'vim-syntastic/syntastic'
Plug 'tpope/vim-fugitive'
Plug 'altercation/vim-colors-solarized'
Plug 'ambv/black'
Plug 'ayu-theme/ayu-vim'
Plug 'tpope/vim-unimpaired'
Plug 'preservim/tagbar'
call plug#end()

syn on
"set termguicolors
"let ayucolor="mirage"
colorscheme default

highlight Comment ctermfg=green
"filetype plugin indent on
set shiftwidth=4 softtabstop=4 tabstop=4
set nu rnu
set autoindent
set hlsearch
set ignorecase
set backspace=indent,eol,start
set autoindent
set expandtab
set smartindent
set shiftround
set splitbelow splitright
set ruler
set tags+=tags;/

" Vim rooter
let g:rooter_silent_chdir = 1

" Dart file
au BufRead,BufNewFile *.dart set filetype=dart
autocmd Filetype dart setlocal ts=2 sw=2 sts=2 expandtab
let g:dart_style_guide = 2

" Nerdtree
 autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
             \ quit | endif

nnoremap <C-n> :NERDTreeToggle<CR>

set wildignore+=*.pyc,*.o,*.obj,*.svn,*.swp,*.class,*.hg,*.DS_Store,*.min.*,__pycache__,tags

let NERDTreeRespectWildIgnore=1
let Tlist_Use_Right_Window = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_WinWidth = 50
let python_highlight_all=1
let g:syntastic_python_flake8_args='--ignore=E501'
