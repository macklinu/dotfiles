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
Plugin 'chriskempson/base16-vim'
call vundle#end()
filetype plugin indent on

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

" Remove whitespace on save
autocmd BufWritePre * :%s/\s\+$//e
