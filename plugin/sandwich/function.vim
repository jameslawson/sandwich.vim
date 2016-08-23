if exists('g:loaded_sandwich_function')
  finish
endif

function! sandwich#function#foo(x)
  return 1
endfunction

let g:loaded_sandwich_function = 1
