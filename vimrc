call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'
Plug 'natebosch/vim-lsc'
Plug 'natebosch/vim-lsc-dart'

Plug 'morhetz/gruvbox'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'tomasr/molokai'
Plug 'EdenEast/nightfox.nvim'
Plug 'ayu-theme/ayu-vim'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'altercation/vim-colors-solarized'
Plug 'ambv/black'
Plug 'tpope/vim-unimpaired'
Plug 'preservim/tagbar'
call plug#end()

syn on
"let g:solarized_termcolors=256
set background=dark
colorscheme gruvbox
set t_Co=256

"highlight Comment ctermfg=green
"hi Search cterm=NONE ctermfg=black ctermbg=yellow
filetype plugin indent on
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
let g:dart_style_guide = 2
let dart_html_in_string=v:true
let g:dart_format_on_save = 1
let g:loaded_syntastic_dart_dartanalyzer_checker = 0
let g:flutter_show_log_on_run = "tab"

" Nerdtree
 autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
             \ quit | endif

nnoremap <C-n> :NERDTreeToggle<CR>

set wildignore+=*.pyc,*.o,*.obj,*.svn,*.swp,*.class,*.hg,*.DS_Store,*.min.*,__pycache__,tags

let NERDTreeRespectWildIgnore=1
let Tlist_Use_Right_Window = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_WinWidth = 50
let g:syntastic_python_flake8_args='--ignore=E501'
let g:syntastic_python_python_exec = 'python3'

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

let mapleader = ","
noremap <Leader>ag :Ag! <c-r>=expand("<cword>")<cr><Home><Right><Right><Right><Right><Right><Right>

command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, {'options': ['--layout=reverse', '--info=inline', '--preview', '~/.vim/plugged/fzf.vim/bin/preview.sh {}']}, <bang>0)

let g:fzf_preview_window = ['down,50%', 'ctrl-/']
let g:fzf_tags_command = 'ctags -R'
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>
