" +---------------------------------------------------------
" | Author: James Lawson (github.com/jameslawson)
" | License: MIT
" +---------------------------------------------------------

runtime! plugin/sandwich/function.vim

describe 'Smart Quotes'

  before
    new
  end

  after
    close!
  end

  " it 'should cursor move right when cursor on a quote'
  "   put! = "''"
  "   normal! gg$
  "   call SmartQuotes("'")

  "   Expect getline(1) == "''"
  "   Expect col('.') == 2
  " end

  it 'should insert "" in an empty buffer'
    put! = ''
    call SmartQuotes("'")

    Expect getline(1) == "''"
    Expect col('.') == 2
  end

  it 'should insert "" at the end of a line'
    put! = 'foo'
    normal! gg$
    execute "normal a'"

    Expect getline(1) == "foo''"
    Expect col('.') == 4
  end

  it 'should move cursor right when cursor sitting on quote'
    put! = 'foo'''''
    normal! gg^f'
    execute "normal a'"

    Expect getline(1) == "foo''"
    Expect col('.') == 5
  end

end
