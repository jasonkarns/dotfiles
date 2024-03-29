# fuzzy finder and path change for code projects
code() {
  # shellcheck disable=2086
  cd "$(IFS=: && echo $CODEPATH | xargs -J % find % -maxdepth 1 -type d 2>/dev/null | sort -u | selecta "${1:+ -s $1}")" || return
}

# Create a new directory and enter it
md() { mkdir -p "$@" && cd "$@" || return; }

# Create a temp directory and enter it
mdtmp() { cd "$(mktemp -d)" || return; }

# cd into whatever is the forefront Finder window.
cdf() { cd "$(osascript -e 'tell app "Finder" to POSIX path of (insertion location as alias)')" || return; }

# Start an HTTP server from a directory, optionally specifying the port
server() {
  local port="${1:-8000}"
  open "http://localhost:${port}/"

  # Set the default Content-Type to `text/plain` instead of `application/octet-stream`
  # And serve everything as UTF-8 (although not technically correct, this doesn’t break anything for binary files)
  python -c $'import SimpleHTTPServer;\nmap = SimpleHTTPServer.SimpleHTTPRequestHandler.extensions_map;\nmap[""] = "text/plain";\nfor key, value in map.items():\n\tmap[key] = value + ";charset=UTF-8";\nSimpleHTTPServer.test();' "$port"
}

# auto-register bash completion for tools that support `--generate-bash-completion`
# example usage: `complete -F _cli_bash_autocomplete keybase`
_cli_bash_autocomplete() {
  local cur opts
  cur="${COMP_WORDS[COMP_CWORD]}"
  opts=$( "${COMP_WORDS[@]:0:$COMP_CWORD}" --generate-bash-completion )
  mapfile -t COMPREPLY < <(compgen -W "${opts}" -- "${cur}")

  return 0
}
