" === Core ===
syntax on
set termguicolors
silent! colorscheme forest

" === UI ===
set nu rnu
set cursorline
set cursorlineopt=number
set clipboard=unnamedplus

" === Indentation ===
set autoindent
set tabstop=2
set shiftwidth=2
set softtabstop=2

" === Leader ===
let mapleader = " "

" === Netrw ===
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_winsize = 25
nnoremap <leader>e :Lexplore<CR>

" === Keymaps ===
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" === Plugins ===
call plug#begin()
Plug 'norcalli/nvim-colorizer.lua'
call plug#end()
filetype plugin indent on
