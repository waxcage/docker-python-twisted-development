## waxcage/python-twisted-development aliases

# analyzes python files recursively using twistedchecker
alias twistedchecker-recursive-directory-check=twistedchecker
alias Ttwistedchecker-directory=twistedchecker-recursive-directory-check

# analyzes python files recursively using pychecker
alias pychecker-recursive-directory-check='function _pychecker_directory(){ pychecker $(find $1 -name "*.py"); };_pychecker_directory'
alias Tpychecker-directory=pychecker-recursive-directory-check

# analyzes python files recursively using pyflakes
alias pyflakes-recursive-directory-check=pyflakes
alias Tpyflakes-directory=pyflakes-recursive-directory-check




## end of waxcage/python-twisted-development aliases
