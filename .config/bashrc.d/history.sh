# see config.bash.mac for apple-specific settings
HISTCONTROL=ignoredups:erasedups:ignorespace
: ${HISTSIZE:=10000}
HISTIGNORE="fg*"
: "${HISTFILE:=$XDG_STATE_HOME/bash_history}"
