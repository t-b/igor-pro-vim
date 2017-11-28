" Indent script for Igor Pro

" Comment out the finish lines for debugging

if exists("b:did_indent") || version < 700
  finish
endif

let b:did_indent = 1

setlocal indentexpr=GetIgorProIndent()

setlocal indentkeys+=0=catch,0=end,0=End,0=endmacro,0=EndMacro,0=endswitch,0=endtry,0=EndStructure,0=else,0=elseif,0=endtry,0=while,0=#endif,0=#elif

setlocal autoindent

" Only define the function once.
if exists("*GetIgorProIndent")
  finish
endif

function! GetIgorProIndent()
  " Find a non-blank line above the current line.
  let prevlnum = prevnonblank(v:lnum - 1)

  " Hit the start of the file, use zero indent.
  if prevlnum == 0
    return 0
  endif

  " Add a 'shiftwidth' after lines that start a block:
  " function, proc, menu, submenu, macro, window, picture
  " if, else, elseif
  " #if, #ifdef, #ifndef, #elif
  " for, do
  " switch, strswitch
  " case, default
  " try, catch
  let ind = indent(prevlnum)
  let prevline = getline(prevlnum)
  let midx = match(prevline, '^\s*\%(#ifdef\>\|#ifndef\>\|#if\>\|#elif\>\|if\>\|else\>\|elseif\>\|proc\>\|menu\>\|submenu\>\|macro\>\|Structure\>\|window\>\|for\>\|do\>\|switch\>\|case\>\|default\>\|strswitch\>\|try\>\|catch\>\|picture\>\)')
  if midx == -1
    let midx = match(prevline, '\<function\>.*(')
  endif

  if midx != -1
    " Add 'shiftwidth' if what we found previously is not in a comment
    if synIDattr(synID(prevlnum, midx + 1, 1), "name") != "igorComment"
      let ind = ind + &shiftwidth
    endif
  endif

  " Subtract a 'shiftwidth' if the previous line contains a flow control
  " statement
  let midx = match(prevline, '^\s*\%(break\>\|continue\>\)')
  if midx != -1 && synIDattr(synID(prevlnum, midx + 1, 1), "name") != "igorComment"
      let ind = ind - &shiftwidth
    endif
  endif

  " Subtract a 'shiftwidth' on lines that end a block:
  " else, elseif, endif
  " #elif, #endif
  " end, endmacro
  " endswitch
  " catch, endtry
  " while
  " EndStructure
  " This is the part that requires 'indentkeys'.
  let midx = match(getline(v:lnum), '^\s*\%(end\|endmacro\|endswitch\|endif\|endtry\|EndStructure\|catch\|else\|elseif\|while\|#elif\|#endif\)')
  if midx != -1 && synIDattr(synID(v:lnum, midx + 1, 1), "name") != "igorComment"
    let ind = ind - &shiftwidth
  endif

  return ind
endfunction
