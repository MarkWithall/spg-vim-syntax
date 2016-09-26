if has("autocmd")
    autocmd BufRead,BufNewFile *.spg setfiletype spg
    if did_filetype()
        finish
    endif
    autocmd BufRead,BufNewFile *
        \ if getline(1) =~ '\v^B\d{3}' |
        \    setfiletype spg |
        \ endif
endif

