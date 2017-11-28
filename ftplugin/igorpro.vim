if exists("b:did_ftplugin")
  finish
endif

let b:did_ftplugin = 1

" general settings
setlocal autoindent
setlocal noexpandtab
setlocal softtabstop=0
setlocal tabstop=4
setlocal shiftwidth=4
setlocal foldmethod=syntax

if exists("tcomment")
  call tcomment#DefineType('igorpro','// %s')
endif

" matchit
if exists("loaded_matchit")
    let b:match_ignorecase = 1

    let b:match_words  = '\<if\>:\<else\>:\<elseif\>:\<endif\>,'
    let b:match_words .= '\(\<switch\>\|\<strswitch\>\):\<endswitch\>,'
    let b:match_words .= '\<try\>:\<catch\>:\<endtry\>,'
    let b:match_words .= '\<do\>:\<while\>,'
    let b:match_words .= '\<for\>:\<endfor\>,'
    let b:match_words .= '\(\<menu\>\|\<submenu\>\|\<proc \>\|\<macro\>\|\<window\>\|\<function\>\|\<picture\>\):\(\<end\>\|\<endmacro\>\),'
    let b:match_words .= '\<structure\>:\<endstructure\>,'
    let b:match_words .= '\<#else\>:\<#elif\>:\<#endif\>:\<#ifdef\>:\<#ifndef\>:\<#if\>'
endif

" Undo the stuff we changed
let b:undo_ftplugin = "unlet! b:match_words"

" suffix
set suffixesadd=.ipf

" dictionary
" Same operations and functions as syntax file
let &dictionary = expand("<sfile>:p:h") . "/dict.txt"
