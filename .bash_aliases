## waxcage/python-twisted-development aliases

# analyzes python files recursively using twistedchecker
alias twistedchecker-recursive-directory-check=twistedchecker
alias Wtwistedchecker-directory=twistedchecker-recursive-directory-check

# analyzes python files recursively using pychecker
alias pychecker-recursive-directory-check='function _pychecker_directory(){ pychecker $(find $1 -name "*.py"); };_pychecker_directory'
alias Wpychecker-directory=pychecker-recursive-directory-check

# analyzes python files recursively using pyflakes
alias pyflakes-recursive-directory-check=pyflakes
alias Wpyflakes-directory=pyflakes-recursive-directory-check

# twisted profiler aliases
Wtwisted-profile-hotshot-format=_twisted_profile_hotshot

# twisted profiler functions
function _twisted_profile_hotshot(){
    if [ $# -eq 0 ]; then
        echo -e "Usage: twisted-profiler \e[1mTWISTED_APPLICATION PROFILES_DIRECTORY\e[0m"
    elif [ $# -gt 2 ]; then
        echo -e "Usage: twisted-profiler \e[1mTWISTED_APPLICATION PROFILES_DIRECTORY\e[0m"
        echo -e "\e[31mToo many parameters - expecting 2\e[0m"
    else
        current_timestamp=$(date +'%Y-%m-%d_%H-%M-%S')
        current_profile="$2/run_$current_timestamp"
        current_profile_hotshot="$current_profile/hotshot"
        mkdir -p $current_profile_hotshot
        echo -e "Profiles for application \e[1m$1\e[0m will be generated into \e[1m$current_profile\e[0m"
        twistd -n --savestats --profile=$current_profile_hothshot -y $1
    fi
}




## end of waxcage/python-twisted-development aliases
