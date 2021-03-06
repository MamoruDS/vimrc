set tabstop=4 shiftwidth=4 expandtab

set updatetime=250
set cursorline
set background=dark

set encoding=UTF-8

let &t_Co=256
let base16colorspace=256

call plug#begin('~/.config/nvim/plugged')
" https://github.com/airblade/vim-gitgutter
Plug 'airblade/vim-gitgutter'
" https://github.com/itchyny/lightline.vim
Plug 'itchyny/lightline.vim'
" https://github.com/neoclide/coc.nvim
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" https://github.com/preservim/nerdtree
Plug 'preservim/nerdtree'
" https://github.com/gabrielelana/vim-markdown
Plug 'gabrielelana/vim-markdown'
" https://github.com/Xuyuanp/nerdtree-git-plugin
Plug 'Xuyuanp/nerdtree-git-plugin'
" https://github.com/neoclide/jsonc.vim
Plug 'neoclide/jsonc.vim'
call plug#end()

for f in split(glob('~/.config/nvim/custom/*.vim'), '\n')
    exe 'source' f
endfor
