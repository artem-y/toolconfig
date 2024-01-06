syntax on

set wildmenu
set nu
set relativenumber

" Use 4 spaces for tab
set tabstop=4
set expandtab

" Indentation size for '>' and '<' shifts
set shiftwidth=4

" This helps deleting 4 spaces at a time, makes it consistent with tabstop
set softtabstop=4

set autoindent

" REMAPS:

" Set leader
let mapleader = " "

" Exit to netrw explorer
nnoremap <leader>e :Ex<CR>

" Enclose word in normal mode 
nnoremap <leader>( viwdi()<C-[>hp
nnoremap <leader>[ viwdi[]<C-[>hp
nnoremap <leader>{ viwdi{}<C-[>hp
nnoremap <leader>" viwdi""<C-[>hp
nnoremap <leader>' viwdi''<C-[>hp
nnoremap <leader>` viwdi``<C-[>hp
" Enclose selection 
vnoremap ( di()<C-[>hp
vnoremap [ di[]<C-[>hp
vnoremap { di{}<C-[>hp
vnoremap " di""<C-[>hp
vnoremap ' di''<C-[>hp
vnoremap ` di``<C-[>hp

" Move selected lines
vnoremap J :m '>+1<CR>gv
vnoremap K :m '<-2<CR>gv

vnoremap <Tab> >gv
vnoremap <s-tab> <gv

