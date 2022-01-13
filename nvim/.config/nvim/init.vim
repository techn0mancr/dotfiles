"                           _         
"    ____  ___  ____ _   __(_)___ ___ 
"   / __ \/ _ \/ __ \ | / / / __ `__ \
"  / / / /  __/ /_/ / |/ / / / / / / /
" /_/ /_/\___/\____/|___/_/_/ /_/ /_/ 
"
" neovim configuration file
"
" Written by Nathanael Hananto Putro

" Manjaro-specific setup
set title

" Initial setup to avoid interfering with plugins
syntax on
set encoding=UTF-8
set nocompatible
set noshowmode

"""" START Vim-plug configuration
" Initialize vim-plug
call plug#begin('~/.local/share/nvim/plugged')

" Utility
Plug 'ctrlpvim/ctrlp.vim'
Plug 'junegunn/fzf'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'

" Generic programming support
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/syntastic'
Plug 'townk/vim-autoclose'

" Theme/interface
Plug 'edkolev/tmuxline.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'aca/vim-monokai-pro'
Plug 'sheerun/vim-polyglot'

call plug#end()
"""" END Vim-plug configuration

"""""""""""""""""""""""
" Configuration section
"""""""""""""""""""""""
" Show line numbers
set number
set ruler

" Set proper tabs
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

" Highlight current line
set cursorline

" Reduce time taken to exit Insert mode
set ttimeoutlen=10

" Highlight characters that go over the 80-character length
set colorcolumn=80

" required by NERD Commenter
filetype plugin on

"""""""""""""""""""
" Theme and styling
"""""""""""""""""""
" Enable true colors (breaks color if not supported)
" set termguicolors
" set background=dark

" Enable Monokai Pro
colorscheme monokai_pro

"""" Vim-Airline configuration
" Themes and fonts
let g:airline_theme='deus'
let g:airline_powerline_fonts = 1 " Enable powerline fonts

" Extensions
let g:airline#extensions#tabline#enabled = 1 " Enable enhanced tabs
let g:airline#extensions#syntastic#enabled = 1 " Enable syntastic integration
let g:airline#extensions#tmuxline#enabled = 1 " Enable tmuxline integration
let g:airline#extensions#whitespace#enabled = 1 " Enable detection of whitespace errors
let g:airline#extensions#whitespace#mixed_indent_algo = 2

""""""""""""""""""""""""""""
" Key mapping configurations
""""""""""""""""""""""""""""
let mapleader = ","

" use <C-n> for toggling NERDTree
map <C-n> :NERDTreeToggle<CR>

" use <C-p> for toggling Ctrl-P
let g:ctrlp_map = '<C-p>'

" use <Esc> to remove highlights
nnoremap <Esc> :noh<return><Esc>

" use <Tab> to trigger and confirm completion
function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
    \ pumvisible() ? coc#_select_confirm() :
    \ <SID>check_back_space() ? "\<Tab>" :
    \ coc#refresh()

"" use vim keybindings to navigate completion list
"inoremap <expr> j
    "\ pumvisible() ? "\<C-n>" :
    "\ 'j'
"inoremap <expr> k
    "\ pumvisible() ? "\<C-p>" :
    "\ 'k'
