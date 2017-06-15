" +---------------------------------------------------------
" | Author: James Lawson (github.com/jameslawson)
" | License: MIT
" +---------------------------------------------------------

let g:sandwich_enable_curly_brace = 0
runtime plugin/sandwich/function.vim

describe 'Disabling Curly Brace Sandwiches'

  after
    close!
  end

  it 'should _not_ insert {} when pressing {'
    " and instead just insert one double quote as usual
    new
    execute 'normal a{'
    Expect getline(1) == '{'
    Expect col('.') == 1
  end

end
