" Vim syntax file
" Language:     Slurper
" Maintainer:   Adam Lowe <contact@adamlowe.me>
" Filenames:    *.slurper

" Only do this for slurper files if not already defined
if exists("b:current_syntax")
  finish
endif

syn case match

syn match slurperDelimiter "^=="

syn match slurperName "^name"

syn match slurperDescription "^description"

syn match slurperLabels "^labels"

hi def link slurperDelimiter    Delimiter
hi def link slurperName         Statement
hi def link slurperDescription  Statement
hi def link slurperLabels       Statement

let b:current_syntax = "slurper"
