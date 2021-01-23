" coc extensions
" list of coc extensions: https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions
let g:coc_global_extensions = [
    \"coc-eslint",
    \"coc-git",
    \"coc-json",
    \"coc-pairs",
    \"coc-prettier",
    \"coc-sh",
    \"coc-tsserver",
    \"coc-vimlsp",
    \"coc-yaml",
    \]

" extensions for python
call add(g:coc_global_extensions, "coc-pyright")
" extensions for rust-lang
" call add(g:coc_global_extensions, "coc-rust-analyzer")
" extensions for web development
" call add(g:coc_global_extensions, "coc-css")
" call add(g:coc_global_extensions, "coc-html")

" https://github.com/neoclide/coc.nvim#example-vim-configuration
set hidden
set nobackup
set nowritebackup
set shortmess+=c

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
