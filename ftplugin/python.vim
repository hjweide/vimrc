" File ~/.vim/after/ftplugin/python.vim
" Python specific settings

let b:comment_leader = '# '

setlocal tabstop=4
setlocal shiftwidth=4
setlocal expandtab
setlocal autoindent
setlocal smarttab
setlocal formatoptions=croql

"-------------------------
" PLUGIN: Syntastic Python
let g:syntastic_python_checkers=['flake8'] " ignores lines containng # NOQA
" SCRIPTING VIM IN PYTHON 
" http://orestis.gr/blog/2008/08/10/scripting-vim-with-python/
python << endpython
import vim
flake8_errors = [
    'E201', # whitespace after '('
    'E202', # whitespace before ']'
    'E203', # whitespace before ', '
    'E221', # multiple spaces before operator
    'E222', # multiple spaces after operator
    'E241', # multiple spaces after ,
    'E265', # block comment should start with "# "
    'E271', # multiple spaces after keyword 
    'E272', # multiple spaces before keyword
    'E301', # expected 1 blank line, found 0
    'W602', # Old reraise syntax
] 
flake8_ignore = '--ignore=' + ','.join(flake8_errors)
vim.command('let g:syntastic_python_flake8_args = "%s"' % flake8_ignore)
endpython
