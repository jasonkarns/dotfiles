export GNUPGHOME=$XDG_CONFIG_HOME/gpg

launchctl setenv GNUPGHOME "$GNUPGHOME"

# keybase
test -r "$(dirname "${BASH_SOURCE[0]}")/keybase-completion/keybase.sh" && source "$_"


return # short circuit the gpg daemon stuff (MacGPG is handling it now)


envfile="${GNUPGHOME}/.gpg-agent-info"

if [ -f "$envfile" ] && kill -0 "$( cut -d: -f 2 "$envfile" )" 2>/dev/null; then
  eval "$(cat "$envfile")"
else
  eval "$(gpg-agent --daemon --write-env-file "$envfile")"
fi

export GPG_AGENT_INFO
export GPG_TTY="$(tty)"
