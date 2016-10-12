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
Plugin 'tpope/vim-unimpaired'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-endwise'
Plugin 'mattn/emmet-vim'
Plugin 'ecomba/vim-ruby-refactoring'
Plugin 'thoughtbot/vim-rspec'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'gregsexton/MatchTag'
Plugin 'AndrewRadev/switch.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'moll/vim-node'
Plugin 'mxw/vim-jsx'
Plugin 'leafgarland/typescript-vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'chase/vim-ansible-yaml'
Plugin 'airblade/vim-gitgutter'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'chriskempson/base16-vim'
Plugin 'morhetz/gruvbox'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
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
syntax enable
set background=dark
colorscheme base16-solarized-dark

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

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
let g:rspec_command = "Dispatch bundle exec rspec {spec}"
let g:rspec_runner = "os_x_iterm"

" Rubocop
nnoremap <Leader>r :Dispatch bundle exec rubocop %<CR>
" Rubocop autocorrect current file
nnoremap <Leader>ra :Dispatch bundle exec rubocop -a %<CR>

let g:jsx_ext_required = 0 " Allow JSX in normal JS files
