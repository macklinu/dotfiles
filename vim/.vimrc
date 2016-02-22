set nocompatible  " be iMproved, required
filetype off      " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" plugins
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'wikitopian/hardmode'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'tpope/vim-sensible'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-fugitive'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'gregsexton/MatchTag'
Plugin 'kchmck/vim-coffee-script'
Plugin 'airblade/vim-gitgutter'
Plugin 'mhinz/vim-startify'
Plugin 'chriskempson/base16-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
call vundle#end()

" Enable hard mode
autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()
nnoremap <leader>h <Esc>:call ToggleHardMode()<CR>

filetype plugin indent on
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

" color scheme
syntax enable
set background=dark
colorscheme base16-solarized

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

" j and k mash escape
inoremap jk <Esc>
inoremap kj <Esc>

" Remove whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

set colorcolumn=80

" CtrlP options
let g:ctrlp_regexp=1
let g:ctrlp_match_window='bottom,order:btt,min:1,max:5,results:5'
let g:ctrlp_show_hidden=1
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*
let g:ctrlp_custom_ignore='\v[\/]\.(git)$'

" Airline options
let g:airline_theme='solarized'
