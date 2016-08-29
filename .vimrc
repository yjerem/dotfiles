" required by Vundle
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  Plugin 'VundleVim/Vundle.vim'

  " better status line
  Plugin 'itchyny/lightline.vim'

  " figures out what type of indentation to use
  Plugin 'tpope/vim-sleuth'

  " highlights extraneous whitespace and helps you remove it
  Plugin 'ntpeters/vim-better-whitespace'

  " language plugins
  Plugin 'rust-lang/rust.vim'
  Plugin 'cespare/vim-toml'
  Plugin 'plasticboy/vim-markdown'
  Plugin 'kchmck/vim-coffee-script'
  Plugin 'file:///home/jeremy/projects/lumb/vim-lumb'
call vundle#end()

" required by Vundle
filetype plugin indent on

syntax on              " syntax highlighting
set number             " line numbers
set incsearch          " search as you type
set expandtab          " insert spaces instead of tabs
set shiftwidth=2       " two-space tabs
set softtabstop=2      " yes, two-space tabs
set autoindent         " simple auto indent
set laststatus=2       " always show status line
set foldlevelstart=99  " open all folds by default

" I try to keep comments 80 chars wide, and code never more than 100
set colorcolumn=80,100

" leader keys
let mapleader = ","
let maplocalleader = "\\"

" type jk to leave insert mode
inoremap jk <esc>
inoremap <esc> <nop>

" don't let myself use the arrow keys
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

" remove all trailing whitespace (plugin)
nnoremap <leader><space> :StripWhitespace<cr>

" quickly edit and source this vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

