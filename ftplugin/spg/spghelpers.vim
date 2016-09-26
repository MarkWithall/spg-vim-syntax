if exists("b:did_spghelpers_ftplugin")
    finish
endif
let b:did_spghelpers_ftplugin = 1

map <buffer> <leader>ta :call ShowArrialTime()<cr>
map <buffer> <leader>td :call ShowDepartureTime()<cr>

function! ShowArrialTime()
    call ShowTime(strpart(getline('.'), 6, 4))
endfunction

function! ShowDepartureTime()
    call ShowTime(strpart(getline('.'), 10, 4))
endfunction

function! ShowTime(totalminutes)
    let total = substitute(a:totalminutes, '\v^\s*(.*)\s*$', '\1', '')
    echo PadZero(total/60, 2) . PadZero(total%60, 2)
endfunction

function! PadZero(number, length)
    return repeat("0", a:length - len(a:number)) . a:number
endfunction

