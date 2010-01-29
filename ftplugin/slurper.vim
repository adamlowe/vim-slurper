" Vim filetype plugin
" Language:	Slurper
" Maintainer:	Adam Lowe <contact@adamlowe.me>

" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

setlocal spell

nmap <buffer> <C-k> 
      \O
      \<CR><C-D>==
      \<CR><C-D>name:
      \<CR>  
      \<CR><C-D>description:
      \<CR><C-T>In order to
      \<CR>As a
      \<CR>I want
      \<CR>
      \<CR>-
      \<CR>
      \<CR><C-D>labels:
      \<CR>  
      \<Esc>
      \9
      \k
      \<S-a>

imap <buffer> <C-k> <C-O><C-k>

nmap <buffer> <C-l> 
      \O
      \<CR><C-D>==
      \<CR><C-D>name:
      \<CR>  
      \<CR><C-D>description:
      \<CR><C-T>In order to
      \<CR>As a
      \<CR>I want
      \<CR>
      \<CR><C-D>labels:
      \<CR>  
      \<Esc>
      \7
      \k
      \<S-a>

imap <buffer> <C-l> <C-O><C-l>
