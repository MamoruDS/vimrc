" coc extensions
" list of coc extensions: https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions

" basic extensions
let g:coc_global_extensions = [
    \"coc-git",
    \"coc-json",
    \"coc-pairs",
    \"coc-prettier",
    \"coc-sh",
    \"coc-vimlsp",
    \"coc-yaml",
    \]

" extensions for python
" call add(g:coc_global_extensions, "coc-pyright")

" extensions for rust-lang
" call add(g:coc_global_extensions, "coc-rust-analyzer")

" extensions for typescript/javascript
" call add(g:coc_global_extensions, "coc-eslint")
" call add(g:coc_global_extensions, "coc-tsserver")

" extensions for web development
" call add(g:coc_global_extensions, "coc-css")
" call add(g:coc_global_extensions, "coc-html")
