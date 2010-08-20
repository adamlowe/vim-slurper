" Vim filetype plugin
" Language:	Slurper
" Maintainer:	Adam Lowe <contact@adamlowe.me>

" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

setlocal spell
highlight SpellCap none

nmap <buffer> <C-h> 
      \o
      \<C-D>==
      \<CR>story_type:
      \<CR>chore
      \<CR>name:
      \<CR><C-D>  
      \<CR>description:
      \<CR><C-D>  
      \<CR>
      \<CR>labels:
      \<CR><C-D>  
      \<Esc>
      \5
      \k
      \<S-a>

imap <buffer> <C-j> <C-O><C-j>

nmap <buffer> <C-j> 
      \o
      \<C-D>==
      \<CR>story_type:
      \<CR>feature
      \<CR>name:
      \<CR><C-D>  
      \<CR>description:
      \<CR>In order to
      \<CR>As a
      \<CR>I want
      \<CR>
      \<CR>-
      \<CR>
      \<CR>labels:
      \<CR><C-D>  
      \<Esc>
      \9
      \k
      \<S-a>

imap <buffer> <C-j> <C-O><C-j>

nmap <buffer> <C-k> 
      \o
      \<C-D>==
      \<CR>story_type:
      \<CR>release
      \<CR>name:
      \<CR><C-D>  
      \<CR>description:
      \<CR><C-D>  
      \<CR>
      \<CR><C-D>labels:
      \<CR><C-D>  
      \<Esc>
      \5
      \k
      \<S-a>

imap <buffer> <C-k> <C-O><C-k>

nmap <buffer> <C-l> 
      \o
      \<C-D>==
      \<CR>story_type:
      \<CR>bug
      \<CR>name:
      \<CR><C-D>  
      \<CR>description:
      \<CR><C-D>  
      \<CR>
      \<CR>labels:
      \<CR><C-D>  
      \<Esc>
      \5
      \k
      \<S-a>

imap <buffer> <C-l> <C-O><C-l>

function! SlurperFoldText()
  let storytype=substitute(getline(v:foldstart+2),'  ','','')
  let storytitle=substitute(getline(v:foldstart+4),'  ','','')
  return '== ['.storytype.'] '.storytitle
endfunction

function! SlurperFoldExpr()
  return getline(v:lnum) == '==' ? ">1" : getline(v:lnum)!~'=='
endfunction
