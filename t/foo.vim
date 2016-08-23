runtime! plugin/sandwich/function.vim

describe 'sandwich#function#foo'
  it 'returns a floor for a positive number'
    Expect sandwich#function#foo(1) == 1
  end
end
