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
      " abc|defg
      " abc)|defg
      put! = 'abcdefg'
      normal! ^lll
      call CloseBrackets(')')

      Expect getline(1) == 'abc)defg'
    end
  end

  describe 'typing ) when cursor sitting on )'
    it 'should move the cursor right by one'
      " foo(|)
      " foo()|
      put! = 'foo()'
      normal! gg$
      call CloseBrackets(')')

      Expect getline(1) == 'foo()'
    end
  end

  describe 'typing ) when buffer empty'
    it 'should insert )'
      " |
      " )|
      put! = ''
      normal! gg$
      call CloseBrackets(')')

      Expect getline(1) == ')'
    end
  end


end
