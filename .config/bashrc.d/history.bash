export HISTCONTROL=ignoredups:erasedups:ignorespace
export HISTSIZE=10000
export HISTIGNORE="fg*"
export HISTFILE=$XDG_DATA_HOME/bash/history


# lines modified in /etc/bashrc_Apple_Terminal
# because some vars are used there before they are set in user .bashrc
#
# ~96: HISTFILE="/usr/local/share/bash/history"
# ~97: SHELL_SESSION_DIR="/usr/local/share/bash/sessions/"

# need to explicitly enable b/c `histappend` disables it
export SHELL_SESSION_HISTORY=1
