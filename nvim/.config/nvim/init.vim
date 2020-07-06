""""""""""""""""""""""""""""""""""""""""""
" Nathanael H. Putro Neo/vim configuration
""""""""""""""""""""""""""""""""""""""""""

" Initial setup to avoid interfering with plugins
syntax on
set encoding=utf8
set noshowmode

"""" START Vim-plug configuration
" Initialize vim-plug
call plug#begin('~/.local/share/nvim/plugged')

" Utility
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'junegunn/fzf'
Plug 'ctrlpvim/ctrlp.vim'

" Generic programming support
Plug 'townk/vim-autoclose'
Plug 'scrooloose/syntastic'

" Theme/interface
Plug 'tomasr/molokai'
Plug 'ryanoasis/vim-devicons' "
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'

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

"""""""""""""""""""
" Theme and styling
"""""""""""""""""""
"set termguicolors " Enable true colors (breaks color if not supported)
set background=dark
colorscheme molokai
let g:rehash256 = 1 "Enable Molokai's 256-bit color mode

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
map <C-n> :NERDTreeToggle<CR>
let g:ctrlp_map = '<C-p>'
nnoremap <esc> :noh<return><esc>
