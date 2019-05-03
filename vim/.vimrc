set nocompatible  " be iMproved, required
filetype off      " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" plugins
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'wikitopian/hardmode'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'gregsexton/MatchTag'
Plugin 'AndrewRadev/switch.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'haishanh/night-owl.vim'
call vundle#end()

" Enable hard mode
autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()
nnoremap <leader>h <Esc>:call ToggleHardMode()<CR>

filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins
filetype plugin indent on
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

set autoread

" color scheme
if (has("termguicolors"))
 set termguicolors
endif

syntax enable
set termguicolors     " enable true colors support
colorscheme night-owl

if has('gui_running')
  set guioptions-=m " Remove menu bar
  set guioptions-=T " Remove toolbar
  set guioptions-=r " Remove right-hand scrollbar
  set guioptions-=L " Remove left-hand scrollbar
  set guioptions-=e
endif

" search defaults
set incsearch
set ignorecase
set smartcase
set nohlsearch

set cursorline
set number

let mapleader=','

" j and k mash escape
inoremap jk <Esc>
inoremap kj <Esc>

" Jump to line number quickly in normal mode
nnoremap <CR> G

" Remove whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

set colorcolumn=80

" more natural splits
set splitbelow
set splitright

" CtrlP options
let g:ctrlp_regexp=1
let g:ctrlp_match_window='bottom,order:btt,min:1,max:5,results:5'
let g:ctrlp_show_hidden=1
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*
let g:ctrlp_custom_ignore='\v[\/]\.(git)$|node_modules'

" Airline options
let g:airline_theme='solarized'
