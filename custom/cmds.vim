function! SynStack()
    if !exists("*synstack")
        return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

function! Reload()
    source ~/.config/nvim/init.vim
endfunc

function! _Format()
    if &filetype == 'python'
        if &modified
            echo 'save buffer before formatting (aborted)'
        else
            exec '!black -l 55 ' . expand('%:p')
        endif
    else
        call CocAction('format')
    endif
endfunction

" coc
com! -nargs=0 Format :call _Format()

" nerdtree
function! ToggleNERDTree()
    :NERDTreeToggle
    exe 'call ReloadColorNERDTreeGIT()'
endfunction

function! ReloadColorNERDTreeGIT()
    exe 'source ~/.config/nvim/custom/plugconf_nerdtree.vim'
endfunction

"  nnoremap <C-b> :call ToggleNERDTree()<CR>
