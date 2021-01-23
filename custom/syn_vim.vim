" all builtin options/group should be decorated with underline

" exe 'hi vimCommand		ctermbg=' . g:cc__N . ' ctermfg=' . g:ccBM_
exe 'hi vimCommand		ctermbg=' . g:cc__N . ' ctermfg=' . g:cc_YL
exe 'hi vimVar			ctermbg=' . g:ccBBK . ' ctermfg=' . g:cc_WT
" vimOption: builtin-options
exe 'hi vimOption		ctermbg=' . g:cc__N . ' ctermfg=' . g:cc_WT . ' cterm=underline'

exe 'hi vimHiGroup		ctermbg=' . g:cc__N . ' ctermfg=' . g:cc_WT . ' cterm=underline'

exe 'hi vimHiGui		ctermbg=' . g:cc__N . ' ctermfg=' . g:cc_WT
exe 'hi vimHiGuiFgBg	ctermbg=' . g:cc__N . ' ctermfg=' . g:cc_WT
exe 'hi vimHiCTerm		ctermbg=' . g:cc__N . ' ctermfg=' . g:cc_WT
exe 'hi vimHiCtermFgBg	ctermbg=' . g:cc__N . ' ctermfg=' . g:cc_WT
" vim[]Attrib: ctermbg={}
exe 'hi vimHiAttrib		ctermbg=' . g:cc__N . ' ctermfg=' . g:cc_OR . ' cterm=bold'
exe 'hi vimFgBgAttrib	ctermbg=' . g:cc__N . ' ctermfg=' . g:cc_OR . ' cterm=bold'
