" +---------------------------------------------------------
" | Author: James Lawson (github.com/jameslawson)
" | License: MIT
" +---------------------------------------------------------

let g:sandwich_enable_parenthesis = 0
runtime plugin/sandwich/function.vim

describe 'Disabling Parentheses'

  after
    close!
  end

  it "should _not_ insert () when pressing ("
    " and instead just insert one single quote as usual
    new
    normal a(
    Expect getline(1) == "("
    Expect col('.') == 1
  end

end
