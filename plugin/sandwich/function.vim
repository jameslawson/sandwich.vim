if exists('g:loaded_sandwich_function')
  finish
endif

function! SmartQuotes(thequote)
  let col = col(".")
  let sitting = getline(".")[col-1]
  if (sitting ==# a:thequote)
    " -- move the cursor right
    call cursor(line("."), col+1)
  else
    " -- add the closing bracket
    "    then position cursor over right quote
    execute "normal! i" . a:thequote . a:thequote
  endif
  return ''
endfunction


function! CloseBrackets(closebracket)
  let col = col(".")
  let sitting = getline(".")[col-1]
  if (sitting ==# a:closebracket)
    " -- move the cursor right
    call cursor(line("."), col+1)
    return ''
  else
    " -- add the closing bracket
    execute "normal! a" . a:closebracket
  endif
  return ''
endfunction

inoremap ' <c-r>=SmartQuotes("'")<cr>
inoremap " <c-r>=SmartQuotes('"')<cr>

function! sandwich#function#foo(x)
  return 1
endfunction

let g:loaded_sandwich_function = 1
