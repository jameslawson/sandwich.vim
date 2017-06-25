<h1 align="center">sandwich.vim</h1>
<p align="center">
  <a href="https://travis-ci.org/jameslawson/sandwich.vim" target="_blank"><img src="https://travis-ci.org/jameslawson/sandwich.vim.svg?branch=master"></a>
</p>
<p align="center">
  :bread: A vim plugin for brackets and quotes :bread: <br>
</p>

## Installation

Via [Vundle](https://github.com/VundleVim/Vundle.vim) (recommended):
```
Plugin 'jameslawson/sandwich.vim'
```

## Usage
In insert mode:
1. Typing `(` will insert `()`.
2. Typing `)` insert `)` or will either moves the cursor right by one if the cursor is already sitting on a `)`.
3. Similar rules apply for adding single quotes (`'`) and double quotes (`"`).

## Config

You can disable features by setting the appropriate flags in your `.vimrc`:
```vim
let g:sandwich_enable_double_quote = 0   " disable double quote sandwiches
let g:sandwich_enable_single_quote = 0   " disable single quote sandwiches
let g:sandwich_enable_curly_brace = 0    " disable curly brace sandwiches
let g:sandwich_enable_parenthesis = 0    " disable parenthesis sandwiches
```


## Development

You'll need to have a ruby v2+ environment setup.

```
$ ruby -v
ruby 2.2.3p173 (2015-08-18 revision 51636) [x86_64-darwin14]
$ git clone git@github.com:jameslawson/sandwich.vim.git
$ cd sandwich.vim
$ bundle install
```

In order to run the **unit tests**:
```
rake test
```

## License

MIT
