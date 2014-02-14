export PATH="$PATH:/usr/local/share/npm/bin"

# grunt tab completion
. <(grunt --completion=bash)

# sort-of pristine reinstall for npm
alias npm-pristine='[ -f $(npm prefix)/npm-shrinkwrap.json ] || npm shrinkwrap && rm -rf $(npm prefix)/node_modules && npm install'
