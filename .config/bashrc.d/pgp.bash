##########
# GPG
##########

export GNUPGHOME=${XDG_CONFIG_HOME:?}/gpg

launchctl setenv GNUPGHOME "$GNUPGHOME"

GPG_TTY=$(tty)
export GPG_TTY

# https://github.com/drduh/YubiKey-Guide#ssh

SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
export SSH_AUTH_SOCK

gpgconf --launch gpg-agent

##########
# Keybase
##########

# manual completion script symlinked in /usr/local/etc/bash-completion.d/
