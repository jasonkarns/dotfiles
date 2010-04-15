# Simple svn enhancement functions
# Read more about it at: http://westhoffswelt.de/blog/svn_tweaks.html

function svnst() {
  local SVN="`which svn`"
  # My thanks for this snippet go to Kore Nordmann
  # (http://kore-nordmann.de)
  ${SVN} st --ignore-externals "$@" | grep -v '^X' | sed -e 's/^\?.*$/[1;34m\0[m/' -e 's/^!.*$/[1;31m\0[m/' -e 's/^A.*$/[1;32m\0[m/' -e 's/^M.*$/[1;33m\0[m/' -e 's/^D.*$/[0;31m\0[m/'
}

function svnup() {
  local SVN="`which svn`"
  # This snippet is taken from a blog post found on the net. My
  # thanks go out to the author of it.
  # http://woss.name/2007/02/01/display-svn-changelog-on-svn-up/
  # I have slightly modified it to better suit my needs.

  local old_revision=`${SVN} info "$@" | awk '/^Revision:/ {print $2}'`
  local first_update=$((${old_revision} + 1))

  ${SVN} up "$@"

  local new_revision=`${SVN} info "$@" | awk '/^Revision:/ {print $2}'`

  if [ ${new_revision} -gt ${old_revision} ]; then
    svnlog -v -rHEAD:${first_update} "$@"
  else
    echo "No changes."
  fi
}

function svndiff() {
  local SVN="`which svn`"
  # The colordiff utility (http://colordiff.sourceforge.net) is
  # needed for this enhancement to work
  # Thanks to Lukas Kahwe Smith for the addition to
  # leave out whitespace changes
  # Thanks to Robin Speekenbrink for the hint to the -R
  # switch of less, which should fix problems some of
  # you might have with colorization.
  ${SVN} diff "$@" --diff-cmd `which diff` -x "-u -w"|colordiff|less -R
}

function svnlog() {
  local SVN="`which svn`"
  ${SVN} log "$@"|sed -e 's/^-\+$/[1;32m\0[m/' -e 's/^r[0-9]\+.\+$/[1;31m\0[m/'
}

function svnblame() {
  /usr/bin/svn blame "$@"|sed -e 's/^\(\s*[0-9]\+\s*\)\([^ ]\+\s*\)\(.*\)$/[1;32m\1[m[1;31m\2[m\3/'
}
