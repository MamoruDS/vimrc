exe 'hi rustModPath		ctermbg=' . g:cc__N . ' ctermfg=' . g:ccBWT
exe 'hi rustIdentifier	ctermbg=' . g:cc__N . ' ctermfg=' . g:ccBWT
exe 'hi rustType		ctermbg=' . g:cc__N . ' ctermfg=' . g:ccBYL
exe 'hi rustSigil		ctermbg=' . g:cc__N . ' ctermfg=' . g:ccBCY
exe 'hi! link rustEscape rustString'
" exe 'hi! link rustDerive Comment'
exe 'hi rustDerive		ctermbg=' . g:cc__N . ' ctermfg=' . g:cc_GY . ' cterm=' . g:cs__I
" exe 'hi! link rustAttribute SignColumn'
exe 'hi rustAttribute	ctermbg=' . g:cc__N . ' ctermfg=' . g:ccBCY . ' cterm=' . g:cs__I
" not working
exe 'hi rustFoldBraces  ctermbg=' . g:cc__N . ' ctermfg=' . g:ccBCY
