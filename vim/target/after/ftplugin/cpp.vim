if exists("b:after_ftplugin_cpp")
    finish
endif
let b:after_ftplugin_cpp = 1

set commentstring=//\ %s
nnoremap <buffer> <silent> <LocalLeader>f :ClangFormat<CR>
vnoremap <buffer> <silent> <LocalLeader>f :ClangFormat<CR>
