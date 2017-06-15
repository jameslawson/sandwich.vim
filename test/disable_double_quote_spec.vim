" +---------------------------------------------------------
" | Author: James Lawson (github.com/jameslawson)
" | License: MIT
" +---------------------------------------------------------

let g:sandwich_enable_double_quote = 0
runtime plugin/sandwich/function.vim

describe 'Disabling Double Quote Sandwiches'

  after
    close!
  end

  it 'should _not_ insert two double quotes when pressing "'
    " and instead just insert one double quote as usual
    new
    execute 'normal a"'
    Expect getline(1) == '"'
    Expect col('.') == 1
  end

end
