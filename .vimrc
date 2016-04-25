set number
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'airblade/vim-gitgutter'
Bundle 'jistr/vim-nerdtree-tabs'
Plugin 'valloric/youcompleteme'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'flazz/vim-colorschemes'
" Plugin 'altercation/vim-colors-solarized'

call vundle#end()  

filetype plugin indent on
let g:airline_powerline_fonts = 1

set background=dark
colorscheme monokai-chris
set updatetime=250

set tabstop=2
set expandtab 


