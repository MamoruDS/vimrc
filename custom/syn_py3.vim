exe 'hi pythonStatement			ctermbg=' . g:cc__N . ' ctermfg=' . g:ccBM_
exe 'hi pythonOperator			ctermbg=' . g:cc__N . ' ctermfg=' . g:ccBM_
exe 'hi pythonKeyword			ctermbg=' . g:cc__N . ' ctermfg=' . g:cc_OR

" semshi
let g:semshi#mark_selected_nodes=0
let g:semshi#error_sign=v:false
exe 'hi semshiLocal				ctermbg=' . g:cc__N . ' ctermfg=' . g:ccBBL
exe 'hi semshiGlobal			ctermbg=' . g:cc__N . ' ctermfg=' . g:ccBWT
exe 'hi semshiImported			ctermbg=' . g:cc__N . ' ctermfg=' . g:ccBWT
exe 'hi semshiParameter			ctermbg=' . g:cc__N . ' ctermfg=' . g:ccBWT
exe 'hi semshiParameterUnused	ctermbg=' . g:cc__N . ' ctermfg=' . g:ccDWT
exe 'hi semshiFree				ctermbg=' . g:cc__N . ' ctermfg=' . g:ccBWT
exe 'hi semshiBuiltin			ctermbg=' . g:cc__N . ' ctermfg=' . g:ccBYL
exe 'hi semshiAttribute			ctermbg=' . g:cc__N . ' ctermfg=' . g:ccBWT
exe 'hi semshiSelf				ctermbg=' . g:cc__N . ' ctermfg=' . g:ccBM_
exe 'hi semshiUnresolved		ctermbg=' . g:cc__N . ' ctermfg=' . g:ccBWT
exe 'hi semshiSelected			ctermbg=' . g:cc__N . ' ctermfg=' . g:cc__N
"
exe 'hi semshiErrorSign			ctermbg=' . g:cc__N . ' ctermfg=' . g:ccBRD
exe 'hi semshiErrorChar			ctermbg=' . g:cc__N . ' ctermfg=' . g:ccBRD
