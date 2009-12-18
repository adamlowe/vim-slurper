" Vim filetype plugin
" Language:	Slurper
" Maintainer:	Hashrocket <info@hashrocket.com>

" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

setlocal spell

nmap <buffer> <C-j> 
      \<C-\><C-n>
      \o
      \<C-D>name
      \<CR>  
      \<CR><C-D>description
      \<CR><C-T>In order to
      \<CR>As a
      \<CR>I want
      \<CR>
      \<CR>-
      \<CR>
      \<CR><C-D>labels
      \<CR><C-T>
      \<CR><C-D>==
      \<Esc>
      \1
      \0
      \k
      \<S-a>

imap <buffer> <C-j> <C-O><C-j>
