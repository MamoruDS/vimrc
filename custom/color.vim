let g:ccUNK=19
let g:cc__N='None'
let g:cc_BK=16  " black
let g:cc_RD=1   " red
let g:cc_GN=114 " green
let g:cc_YL=3   " yellow
let g:cc_BL=4   " blut
let g:cc_M_=5   " magenta
let g:cc_CY=6   " cyan
let g:cc_WT=231 " white
let g:ccBBK=8   " bright black
let g:ccBRD=9   " bright red
let g:ccBGN=10  " bright green
let g:ccBYL=11  " bright yellow
let g:ccBBL=75  " bright blut
let g:ccBM_=182 " bright magenta
let g:ccBCY=116 " bright cyan
let g:ccBWT=15  " bright white
let g:cc_GY=241 " gray
let g:cc_OR=209 " orange

hi AllBold cterm=bold
match AllBold /./

exe 'hi EndOfBuffer ctermfg=' . g:cc_GY
exe 'hi VertSplit	ctermbg=' . g:cc__N . ' ctermfg=' . g:cc_GY . ' cterm=' . g:cc__N

hi Pmenu		ctermbg=237		ctermfg=None
" hi PmenuSel		ctermbg=214		ctermfg=233
hi PmenuSel		ctermbg=9		ctermfg=255
" hi PmenuSbar    ctermbg=None    ctermfg=None
" hi PmenuThumb   ctermbg=None    ctermfg=None

exe 'hi SignColumn	ctermbg=' . g:cc__N
if has("patch-8.1.1564")
  set signcolumn=number
else
  set signcolumn=auto
endif

set number
hi LineNr		ctermbg=None	ctermfg=240
hi Normal		ctermbg=None
hi ModeMsg		ctermbg=green	ctermfg=238
hi MatchParen	ctermbg=05		ctermfg=231 
hi CursorLine	ctermbg=233     ctermfg=None    cterm=None
hi CursorLineNr	ctermbg=None	ctermfg=250

exe 'hi Comment			ctermbg=' . g:cc__N . ' ctermfg=' . g:cc_GY
exe 'hi Constant		ctermbg=' . g:ccUNK . ' ctermfg=' . g:cc_WT
exe 'hi String			ctermbg=' . g:cc__N . ' ctermfg=' . g:cc_GN
exe 'hi Character		ctermbg=' . g:cc__N . ' ctermfg=' . g:cc_GN
exe 'hi Number			ctermbg=' . g:cc__N . ' ctermfg=' . g:ccBRD
exe 'hi Boolean			ctermbg=' . g:cc__N . ' ctermfg=' . g:cc_OR
exe 'hi Float			ctermbg=' . g:cc__N . ' ctermfg=' . g:cc_RD
exe 'hi Identifier		ctermbg=' . g:cc__N . ' ctermfg=' . g:ccBM_
exe 'hi Function		ctermbg=' . g:cc__N . ' ctermfg=' . g:ccBBL
exe 'hi Statement		ctermbg=' . g:cc__N . ' ctermfg=' . g:cc_YL
exe 'hi Conditional		ctermbg=' . g:cc__N . ' ctermfg=' . g:ccBM_
exe 'hi Repeat			ctermbg=' . g:cc__N . ' ctermfg=' . g:ccBM_
exe 'hi Label			ctermbg=' . g:cc__N . ' ctermfg=' . g:ccBCY
exe 'hi Operator		ctermbg=' . g:cc__N . ' ctermfg=' . g:cc_WT
exe 'hi Keyword			ctermbg=' . g:cc__N . ' ctermfg=' . g:ccBM_
exe 'hi Exception		ctermbg=' . g:cc__N . ' ctermfg=' . g:cc_RD
exe 'hi PreProc			ctermbg=' . g:cc__N . ' ctermfg=' . g:cc_WT
exe 'hi Include			ctermbg=' . g:cc__N . ' ctermfg=' . g:ccBM_
exe 'hi Macro			ctermbg=' . g:ccUNK . ' ctermfg=' . g:cc_WT
exe 'hi PreCondit		ctermbg=' . g:ccUNK . ' ctermfg=' . g:cc_WT
exe 'hi Type			ctermbg=' . g:cc__N . ' ctermfg=' . g:ccBBL
exe 'hi StorageClass	ctermbg=' . g:ccUNK . ' ctermfg=' . g:cc_WT
exe 'hi Structure		ctermbg=' . g:cc__N . ' ctermfg=' . g:cc_RD
exe 'hi Typedef			ctermbg=' . g:ccUNK . ' ctermfg=' . g:cc_WT
exe 'hi Special			ctermbg=' . g:cc__N . ' ctermfg=' . g:ccBM_
exe 'hi SpecialChar		ctermbg=' . g:ccUNK . ' ctermfg=' . g:cc_WT
exe 'hi Tag				ctermbg=' . g:ccUNK . ' ctermfg=' . g:cc_WT
exe 'hi Delimiter		ctermbg=' . g:cc__N . ' ctermfg=' . g:ccBCY
exe 'hi SpecialComment	ctermbg=' . g:ccUNK . ' ctermfg=' . g:cc_WT
exe 'hi Debug			ctermbg=' . g:ccUNK . ' ctermfg=' . g:cc_WT
exe 'hi Underlined		ctermbg=' . g:ccUNK . ' ctermfg=' . g:cc_WT
exe 'hi Ignore			ctermbg=' . g:cc__N . ' ctermfg=' . g:cc_GY
exe 'hi Error			ctermbg=' . g:cc_RD . ' ctermfg=' . g:cc_WT
exe 'hi Todo			ctermbg=' . g:cc_YL . ' ctermfg=' . g:cc_WT . ' cterm=bold'
