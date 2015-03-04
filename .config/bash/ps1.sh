#########################
# git setup
#########################

# source git's ps1 script
$(brew --prefix &>/dev/null) && [[ -f $(brew --prefix)/etc/bash_completion.d/git-prompt.sh ]] && source `brew --prefix`/etc/bash_completion.d/git-prompt.sh

# display working directory state (* for modified/+ for staged)
GIT_PS1_SHOWDIRTYSTATE=true
# display stashed state ($ if there are stashed files)
GIT_PS1_SHOWSTASHSTATE=true
# display HEAD vs upstream state
GIT_PS1_SHOWUPSTREAM=auto
# use colors
GIT_PS1_SHOWCOLORHINTS=true


#########################
# colors (solarized)
#########################

if tput setaf 1 &> /dev/null; then
  tput sgr0
  if [[ $(tput colors) -ge 256 ]] 2>/dev/null; then
    BASE03=$(tput setaf 234)
    BASE02=$(tput setaf 235)
    BASE01=$(tput setaf 240)
    BASE00=$(tput setaf 241)
    BASE0=$(tput setaf 244)
    BASE1=$(tput setaf 245)
    BASE2=$(tput setaf 254)
    BASE3=$(tput setaf 230)
    YELLOW=$(tput setaf 136)
    ORANGE=$(tput setaf 166)
    RED=$(tput setaf 160)
    MAGENTA=$(tput setaf 125)
    VIOLET=$(tput setaf 61)
    BLUE=$(tput setaf 33)
    CYAN=$(tput setaf 37)
    GREEN=$(tput setaf 64)
  else
    BASE03=$(tput setaf 8)
    BASE02=$(tput setaf 0)
    BASE01=$(tput setaf 10)
    BASE00=$(tput setaf 11)
    BASE0=$(tput setaf 12)
    BASE1=$(tput setaf 14)
    BASE2=$(tput setaf 7)
    BASE3=$(tput setaf 15)
    YELLOW=$(tput setaf 3)
    ORANGE=$(tput setaf 9)
    RED=$(tput setaf 1)
    MAGENTA=$(tput setaf 5)
    VIOLET=$(tput setaf 13)
    BLUE=$(tput setaf 4)
    CYAN=$(tput setaf 6)
    GREEN=$(tput setaf 2)
  fi
  BOLD=$(tput bold)
  RESET=$(tput sgr0)
else
  # Linux console colors. I don't have the energy
  # to figure out the Solarized values
  MAGENTA="\033[1;31m"
  ORANGE="\033[1;33m"
  GREEN="\033[1;32m"
  PURPLE="\033[1;35m"
  WHITE="\033[1;37m"
  BOLD=""
  RESET="\033[m"
fi


$(which rbenv &>/dev/null) && RUBY_VERSION='\[$MAGENTA\]$(__rbenv_ps1 "[%s] ")\[$RESET\]'
$(nvm &>/dev/null) && NODE_VERSION='\[$YELLOW\][$(nvm current)] \[$RESET\]'
CWD='\[$BOLD$CYAN\]\w\[$RESET\]'
GIT_STATE='\[$YELLOW\]$(__git_ps1 " (%s)")\[$RESET\]'
PROMPT='\[$BASE3\[\n\$ \[$RESET\]'

export PS1="$NODE_VERSION$RUBY_VERSION$CWD$GIT_STATE$PROMPT"
