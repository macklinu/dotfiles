set nocompatible  " be iMproved, required
filetype off      " required

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'wikitopian/hardmode'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-bundler'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mileszs/ack.vim'
Plug 'gregsexton/MatchTag'
Plug 'AndrewRadev/switch.vim'
Plug 'airblade/vim-gitgutter'
Plug 'editorconfig/editorconfig-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ayu-theme/ayu-vim'
Plug 'prettier/vim-prettier'
Plug 'rust-lang/rust.vim'
Plug 'vim-syntastic/syntastic'
call plug#end()

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
let ayucolor="mirage"
colorscheme ayu

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

nnoremap <Leader>n :NERDTreeToggle<CR>

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

" Prettier options
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yml,*.html,*.rb PrettierAsync

let g:rustfmt_autosave = 1

" Recommended syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
