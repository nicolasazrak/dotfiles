if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged')

function! DoRemote(arg)
  UpdateRemotePlugins
endfunction

" Plug 'Valloric/YouCompleteMe', {'do': './install.py'}

Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }
Plug 'carlitux/deoplete-ternjs'
Plug 'zchee/deoplete-jedi'
Plug 'eagletmt/neco-ghc'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/syntastic'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'
" Plugin 'altercation/vim-colors-solarized'
Plug 'rust-lang/rust.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'neovimhaskell/haskell-vim'
call plug#end()

filetype plugin indent on
let g:airline_powerline_fonts = 1

set background=dark
colorscheme monokai-chris
set updatetime=250

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab 
set number
autocmd VimEnter * NERDTree
" autocmd BufWinEnter * NERDTreeMirror

silent! imap <C-s> <Esc>:w<CR>a
silent! imap <C-q> <Esc>:q<CR>
silent! imap <C-\> <Esc>:NERDTreeToggle<CR>a
silent! imap <C-<> <Esc>:NERDTreeToggle<CR>a

let g:haskellmode_completition_ghc = 0
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc

let g:deoplete#enable_at_startup = 1
