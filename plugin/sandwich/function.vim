"============================================================
" File: sandwich.vim
" Version: 0.0.1
" Author: James Lawson <jameslawson@users.noreply.github.com>
" License: MIT license
" Description: A vim plugin for brackets and quotes
"

if (exists('g:sandwich_loaded_function') && g:sandwich_loaded_function ==# 1)
  finish
endif

function! SmartQuotes(thequote)
  let col = col(".")
  let sitting = getline(".")[col - 1]
  if (sitting ==# a:thequote)
    " -- move the cursor right
    call cursor(line("."), col + 1)
  else
    " -- add two quotes adjacent to each other
    "    then position cursor over the rightmost quote
    execute "normal! i" . a:thequote . a:thequote
  endif
  return ''
endfunction


function! CloseBrackets(closebracket)
  let col = col(".")
  let sitting = getline(".")[col - 1]
  if (sitting ==# a:closebracket)
    " -- move the cursor right
    call cursor(line("."), col + 1)
    return ''
  else
    " -- add the closing bracket
    execute "normal! a" . a:closebracket
  endif
  return ''
endfunction

" merge user configuration with defaults
if !exists('g:sandwich_enable_double_quote')
  let g:sandwich_enable_double_quote = 1
endif
if !exists('g:sandwich_enable_single_quote')
  let g:sandwich_enable_single_quote = 1
endif
if !exists('g:sandwich_enable_curly_brace')
  let g:sandwich_enable_curly_brace = 1
endif
if !exists('g:sandwich_enable_parenthesis')
  let g:sandwich_enable_parenthesis = 1
endif


if (exists('g:sandwich_enable_double_quote') && g:sandwich_enable_double_quote ==# 1)
  inoremap " <c-r>=SmartQuotes('"')<cr>
endif

if (exists('g:sandwich_enable_single_quote') && g:sandwich_enable_single_quote ==# 1)
  inoremap ' <c-r>=SmartQuotes("'")<cr>
endif

if (exists('g:sandwich_enable_curly_brace') && g:sandwich_enable_curly_brace ==# 1)
  inoremap { {}<esc>i
  inoremap } <c-r>=SmartClose('}')<cr>
endif

if (exists('g:sandwich_enable_parenthesis') && g:sandwich_enable_parenthesis ==# 1)
  inoremap ( ()<esc>i
  inoremap ) <c-r>=SmartClose(')')<cr>
endif

let g:sandwich_loaded_function = 1
