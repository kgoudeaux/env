filetype off
filetype plugin indent off
set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on
call pathogen#runtime_append_all_bundles()
:syntax on
:set expandtab
:set tabstop=4
:set shiftwidth=4
:set list listchars=tab:»·,trail:·
function TrimWhiteSpace()
  %s/\s*$//
  ''
:endfunction

:set number
autocmd BufNewFile,BufRead *.dd setf dosini

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MULTIPURPOSE TAB KEY
" Indent if we're at the beginning of a line. Else, do completion.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<cr>
inoremap <s-tab> <c-n>
