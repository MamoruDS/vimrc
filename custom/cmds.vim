function! SynStack()
    if !exists("*synstack")
        return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

function! Reload()
    source ~/.config/nvim/init.vim
endfunc

" coc
com! -nargs=0 Format :CocCommand prettier.formatFile

" nerdtree
function! ToggleNERDTree()
    :NERDTreeToggle
    call ReloadColorNERDTreeGIT()
endfunction

function! ReloadColorNERDTreeGIT()
    exe 'source ~/.config/nvim/custom/plugconf_nerdtree.vim'
endfunction

nnoremap <C-b> :call ToggleNERDTree()<CR>
