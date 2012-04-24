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
      \:call cursor(search('^==\\|\%$', 'W'), -1, 0)
      \<CR>
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

imap <buffer> <C-h> <ESC><C-h>

nmap <buffer> <C-j> 
      \:call cursor(search('^==\\|\%$', 'W'), -1, 0)
      \<CR>
      \o
      \<C-D>==
      \<CR>story_type:
      \<CR>feature
      \<CR>name:
      \<CR><C-D>  
      \<CR>description:
      \<CR>
      \<CR>
      \<CR>labels:
      \<CR><C-D>  
      \<Esc>
      \5
      \k
      \<S-a>

imap <buffer> <C-j> <ESC><C-j>

nmap <buffer> <C-k> 
      \:call cursor(search('^==\\|\%$', 'W'), -1, 0)
      \<CR>
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

imap <buffer> <C-k> <ESC><C-k>

nmap <buffer> <C-l> 
      \:call cursor(search('^==\\|\%$', 'W'), -1, 0)
      \<CR>
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

imap <buffer> <C-l> <ESC><C-l>

function! SlurperFoldText()
  let storytype=substitute(getline(v:foldstart+2),'  ','','')
  let storytitle=substitute(getline(v:foldstart+4),'  ','','')
  return '== ['.storytype.'] '.storytitle
endfunction

function! SlurperFoldExpr()
  return getline(v:lnum) == '==' ? ">1" : getline(v:lnum)!~'=='
endfunction
