" Vim indent file
" Language:	Slurper
" Maintainer:	Adam Lowe <contact@adamlowe.me>

" Only do this when not done yet for this buffer
if exists("b:did_indent")
  finish
endif
let b:did_indent = 1

setlocal autoindent
setlocal tabstop=2
setlocal smarttab
setlocal shiftwidth=2
setlocal autoindent
setlocal expandtab

setlocal indentexpr=GetSlurperIndent()
setlocal indentkeys=0{,0},0),0],!^F,o,O,e,*<Return>
setlocal indentkeys+=<:>,==

" Only define the function once.
if exists("*GetSlurperIndent")
  finish
endif

let s:keyword = '^\s*\%(==\|story_type:\|name:\|description:\|labels:\)'

function! GetSlurperIndent()
  let line = getline(v:lnum)
  let pline = getline(v:lnum-1)

  if line =~ s:keyword || pline =~ '^\s*\%(==\)'
    return 0
  elseif pline =~ s:keyword && line !~ s:keyword
    return indent(v:lnum-1) + &sw
  else
    return -1
  endif
endfunction
