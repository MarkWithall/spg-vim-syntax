" Vim syntax file
" Language:    SPG
" Maintainer:  Mark Withall <mark.withall@tracsis.com>
" Last Change: 2015 Jul 21

" Quit when a (custom) syntax file was already loaded
if exists("b:current_syntax")
    finish
endif

" Header Record
syn match spgHeaderRecordType "^B" nextgroup=spgHeaderRecordFileId
syn match spgHeaderRecordFileId "..." contained

" Delete Train Record
syn match spgDeleteTrainRecordType "^D" nextgroup=spgDeleteTrainRecordTrainId
syn match spgDeleteTrainRecordTrainId "......" contained

" Stop Record
syn match spgStopRecordType "^I" nextgroup=spgStopRecordStop
syn match spgStopRecordStop "..." contained nextgroup=spgStopRecordPortion
syn match spgStopRecordPortion ".." contained nextgroup=spgStopRecordArrival
syn match spgStopRecordArrival "...." contained nextgroup=spgStopRecordDeparture
syn match spgStopRecordDeparture "...." contained nextgroup=spgStopRecordStopType
syn match spgStopRecordStopType "." contained nextgroup=spgStopRecordServiceCode
syn match spgStopRecordServiceCode "...." contained nextgroup=spgStopRecordStock
syn match spgStopRecordStock "................" contained

" Termination Record
syn match spgTerminationRecordType "^T"

hi link spgHeaderRecordType odd
hi link spgHeaderRecordFileId even
hi link spgDeleteTrainRecordType odd
hi link spgDeleteTrainRecordTrainId even
hi link spgStopRecordType odd
hi link spgStopRecordStop even
hi link spgStopRecordPortion odd
hi link spgStopRecordArrival even
hi link spgStopRecordDeparture odd
hi link spgStopRecordStopType even
hi link spgStopRecordServiceCode odd
hi link spgStopRecordStock even
hi link spgTerminationRecordType odd

hi odd     guibg=#CCCCFF
hi even    guibg=#9999FF

