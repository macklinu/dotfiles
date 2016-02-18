set nocompatible  " be iMproved, required
filetype off      " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" plugins
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'chriskempson/base16-vim'
call vundle#end()

filetype plugin indent on
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

" color scheme
syntax enable
set background=dark
colorscheme base16-solarized

" search defaults
set incsearch
set ignorecase
set smartcase
set nohlsearch

set cursorline
set number

" j and k mash escape
inoremap jk <Esc>
inoremap kj <Esc>

" Easier split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Remove whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

let g:ctrlp_show_hidden=1
