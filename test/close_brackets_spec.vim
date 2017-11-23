runtime! plugin/sandwich/function.vim

describe 'CloseBrackets'

  before
    new
  end

  after
    close!
  end

  describe 'typing )'
    it 'should insert ) when cursor is in the middle of line'
      put! = 'abcdefg'
      " place cursor abc|defg
      normal! ^lll
      call CloseBrackets(')')
      Expect getline(1) == 'abc)defg'
    end

    it 'should insert ) when cursor is at the end of line'
      put! = 'foo'
      normal! gg$
      call CloseBrackets(')')

      Expect getline(1) == 'foo)'
      Expect col('.') == 4
    end
  end

  describe 'typing ) when cursor sitting on )'
    it 'should move the cursor right by one'
      put! = 'foo()'
      normal! gg$
      call CloseBrackets(')')

      Expect getline(1) == 'foo()'
      Expect col('.') == 5
    end
  end

  describe 'typing ) when buffer empty'
    it 'should insert )'
      put! = ''
      normal! gg$
      call CloseBrackets(')')

      Expect getline(1) == ')'
      Expect col('.') == 1
    end
  end


end
