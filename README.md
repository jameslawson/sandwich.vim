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
2. Typing `)` insert `)` or will either moves the cursor right by one
depending on whether or not the cursor is already sitting on a `)`.
3. Similar rules apply for adding single quotes (`'`) and double quotes (`"`).


## Development

You'll need to have a Ruby environment setup.

In order to run the **unit tests**:
```
bundle install
rake test
```

## License

MIT
