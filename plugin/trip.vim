scriptencoding utf-8
if exists('g:loaded_trip')
  finish
endif
let g:loaded_trip = 1

let s:save_cpo = &cpo
set cpo&vim


noremap <expr> <Plug>(trip-increment) trip#increment('\S-\d\+', "\<C-x>")
noremap <expr> <Plug>(trip-decrement) trip#decrement('\S-\d\+', "\<C-a>")


noremap <expr> <Plug>(trip-increment-ignore-minus)
\	trip#increment('-\d\+', "\<C-x>")
noremap <expr> <Plug>(trip-decrement-ignore-minus)
\	trip#decrement('-\d\+', "\<C-a>")


let &cpo = s:save_cpo
unlet s:save_cpo
