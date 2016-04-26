call plug#begin('~/.config/nvim/plugged')

function! DoRemote(arg)
  UpdateRemotePlugins
endfunction

Plug 'Valloric/YouCompleteMe', {'do': './install.py'}
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/syntastic'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'
" Plugin 'altercation/vim-colors-solarized'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Xuyuanp/nerdtree-git-plugin'
call plug#end()

filetype plugin indent on
let g:airline_powerline_fonts = 1

set background=dark
colorscheme monokai-chris
set updatetime=250

set tabstop=2
set expandtab 
set number
autocmd VimEnter * NERDTree
autocmd BufWinEnter * NERDTreeMirror
