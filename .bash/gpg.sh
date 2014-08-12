
if [ -f ~/.gpg-agent-info ] && kill -0 `cut -d: -f 2 ~/.gpg-agent-info` 2>/dev/null; then
  eval $(cat ~/.gpg-agent-info)
else
  eval $(gpg-agent --daemon --write-env-file)
fi

export GPG_AGENT_INFO
export GPG_TTY=$(tty)


# keybase.io bash completion
[[ -r ~/.bash/keybase-completion/keybase.sh ]] && source ~/.bash/keybase-completion/keybase.sh
