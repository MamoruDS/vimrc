" Start NERDTree when Vim starts with a directory argument.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'NERDTree' argv()[0] | call ReloadColorNERDTreeGIT() | wincmd p | enew | execute 'cd '.argv()[0] | :NERDTreeFocus | endif

let g:NERDTreeShowHidden = 1

exe 'hi NERDTreeDir			ctermbg=' . g:cc__N . ' ctermfg=' . g:cc_BL . ' cterm=bold'
exe 'hi Identifier			ctermbg=' . g:cc__N . ' ctermfg=' . g:cc_GY
exe 'hi NERDTreeClosable	ctermbg=' . g:cc__N . ' ctermfg=' . g:cc_WT
exe 'hi NERDTreeOpenable	ctermbg=' . g:cc__N . ' ctermfg=' . g:cc_GY
exe 'hi NERDTreeHelp		ctermbg=' . g:cc__N . ' ctermfg=' . g:cc_GY
exe 'hi NERDTreeCWD			ctermbg=' . g:cc__N . ' ctermfg=' . g:ccBWT . ' cterm=bold'
exe 'hi NERDTreeUp			ctermbg=' . g:cc__N . ' ctermfg=' . g:cc_OR . ' cterm=bold'

" nerdtree-git-plugin
let g:NERDTreeGitStatusShowIgnored = 1
let g:NERDTreeGitStatusConcealBrackets = 1
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'M',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'U',
                \ 'Renamed'   :'R',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'D',
                \ 'Dirty'     :'*',
                \ 'Ignored'   :'I',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }

exe 'hi NERDTreeGitStatusModified	ctermbg=' . g:cc__N . ' ctermfg=' . g:ccBBL . ' cterm=bold'
exe 'hi NERDTreeGitStatusStaged		ctermbg=' . g:cc__N . ' ctermfg=' . g:cc_OR . ' cterm=bold'
exe 'hi NERDTreeGitStatusUntracked	ctermbg=' . g:cc__N . ' ctermfg=' . g:ccBGN . ' cterm=bold'
exe 'hi NERDTreeGitStatusRenamed	ctermbg=' . g:cc__N . ' ctermfg=' . g:ccBYL . ' cterm=bold'
exe 'hi NERDTreeGitStatusUnmerged	ctermbg=' . g:cc__N . ' ctermfg=' . g:cc_OR . ' cterm=bold'
exe 'hi NERDTreeGitStatusDeleted	ctermbg=' . g:cc__N . ' ctermfg=' . g:ccBRD . ' cterm=bold'
exe 'hi NERDTreeGitStatusDirty		ctermbg=' . g:cc__N . ' ctermfg=' . g:cc_OR . ' cterm=bold'
exe 'hi NERDTreeGitStatusIgnored	ctermbg=' . g:cc__N . ' ctermfg=' . g:cc_GY . ' cterm=bold'
exe 'hi NERDTreeGitStatusClean		ctermbg=' . g:cc__N . ' ctermfg=' . g:cc_GY . ' cterm=bold'
exe 'hi NERDTreeGitStatusUnknown	ctermbg=' . g:cc__N . ' ctermfg=' . g:cc_GY . ' cterm=bold'
