scriptencoding utf-8
let s:save_cpo = &cpo
set cpo&vim


let s:Buffer = vital#of("trip").import("Coaster.Buffer")


function! trip#if(pattern, then, else)
	let word = s:Buffer.get_text_from_pattern(a:pattern)
	if word !=# ""
		return a:then
	else
		return a:else
	endif
endfunction


function! trip#increment(ignore_pattern, ...)
	let else = get(a:, 1, "")
	return trip#if(a:ignore_pattern, else, "\<C-a>")
endfunction


function! trip#decrement(ignore_pattern, ...)
	let else = get(a:, 1, "")
	return trip#if(a:ignore_pattern, else, "\<C-x>")
endfunction


let &cpo = s:save_cpo
unlet s:save_cpo
