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

" Exit to netrw explorer and go back
nnoremap <leader>e :Ex<CR>
nnoremap <leader>r :Rex<CR>

" Enclose word in normal mode 
nnoremap <leader>( viwdi()<C-[>hp
nnoremap <leader>[ viwdi[]<C-[>hp
nnoremap <leader>{ viwdi{}<C-[>hp
nnoremap <leader>" viwdi""<C-[>hp
nnoremap <leader>' viwdi''<C-[>hp
nnoremap <leader>` viwdi``<C-[>hp
nnoremap <leader>< viwdi<><C-[>hp
" Enclose selection 
vnoremap <leader>( di()<C-[>hp
vnoremap <leader>[ di[]<C-[>hp
vnoremap <leader>{ di{}<C-[>hp
vnoremap <leader>" di""<C-[>hp
vnoremap <leader>' di''<C-[>hp
vnoremap <leader>` di``<C-[>hp
vnoremap <leader>< di<><C-[>hp

" Move selected lines
vnoremap J :m '>+1<CR>gv
vnoremap K :m '<-2<CR>gv

vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

" Convenience hack to omit shift key for commands
nnoremap ; :
vnoremap ; :

" Paste last yanked buffer
nnoremap ,p "0p

" Yank to clipboard
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y "+Y

" Paste from clipboard
nnoremap <leader>p "+p
vnoremap <leader>p "+p

" Add new line in normal mode
nnoremap <leader>o o<Esc>
nnoremap <leader>O O<Esc>

" Add empty HTML template in normal mode
nnoremap <leader>html i<!Doctype HTML><CR><html lang="en"><CR>    <head><CR>    <title></title><CR><BS></head><CR><body><CR></body><CR><BS></html><Esc>4k3wa
