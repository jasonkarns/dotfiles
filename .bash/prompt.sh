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

export PS1="\u:\w$GREEN\$(scm_ps1)$NO_COLOR > "