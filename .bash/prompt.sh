RED="\[\e[1;31m\]"
GREEN="\[\e[1;32m\]"
NO_COLOR="\[\e[0m\]"

scm_ps1() {
    local s=
    if [[ -d ".svn" ]] ; then
        s=\ \(svn:$(svn info | sed -n -e '/^Revision: \([0-9]*\).*$/s//\1/p' )\)
    else
        s=$(__git_ps1 " (git:%s)")
    fi
    echo -n "$s"
}

# function rvm_ruby_prompt {
#   if (declare -f rvm > /dev/null) {
#       if [[ -x $MY_RUBY_HOME ]]
#       then ruby -v | sed 's/\([^(]*\).*/\1/'
#       fi
#   }
# }

export PS1="$NO_COLOR\u:\W$GREEN\$(scm_ps1)$NO_COLOR > "