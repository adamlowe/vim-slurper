" Slurper
autocmd BufNewFile,BufReadPost *.slurper set filetype=slurper foldtext=SlurperFoldText() foldmethod=expr foldexpr=SlurperFoldExpr()
autocmd BufNewFile,BufReadPost *.slurper normal zR
