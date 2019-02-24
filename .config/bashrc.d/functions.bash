# fuzzy finder and path change for code projects
code() {
  cd "$(IFS=: && echo $CODEPATH | xargs -J % find % -maxdepth 1 -type d | sort -u | selecta "${1:+ -s $1}")" || return
}

# Create a new directory and enter it
md() { mkdir -p "$@" && cd "$@"; }

# find shorthand
f() { find . -name "$1"; }

# cd into whatever is the forefront Finder window.
cdf() { cd "$(osascript -e 'tell app "Finder" to POSIX path of (insertion location as alias)')"; }

# Start an HTTP server from a directory, optionally specifying the port
server() {
  local port="${1:-8000}"
  open "http://localhost:${port}/"

  # Set the default Content-Type to `text/plain` instead of `application/octet-stream`
  # And serve everything as UTF-8 (although not technically correct, this doesn’t break anything for binary files)
  python -c $'import SimpleHTTPServer;\nmap = SimpleHTTPServer.SimpleHTTPRequestHandler.extensions_map;\nmap[""] = "text/plain";\nfor key, value in map.items():\n\tmap[key] = value + ";charset=UTF-8";\nSimpleHTTPServer.test();' "$port"
}

# select from modified git files and open in vim
vg() { vim "$(git rev-parse --show-toplevel)/$(git status --porcelain | "$XDG_CONFIG_HOME/bashrc.d/git-status-order" | cut -c 3- | selecta)"; }
