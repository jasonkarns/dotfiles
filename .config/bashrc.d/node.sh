##############
# node       #
##############

export NODE_REPL_HISTORY="$XDG_DATA_HOME/node/history"


##############
# nodenv     #
##############

# store nodes XDG style
export NODENV_ROOT=/opt/nodenv

if command -v nodenv >/dev/null 2>&1; then
  eval "$(nodenv init - --no-rehash)"
fi

##############
# npm        #
##############

export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/config"

##############
# node-gyp   #
##############

# speed up node-gyp native builds
# https://gist.github.com/ralphtheninja/f7c45bdee00784b41fed
# https://github.com/nodejs/node-gyp/blob/8c4b0ffa503aa385f4186e028542dcedca2efeee/lib/build.js#L34
export JOBS=max

##############
# grunt      #
##############

# grunt tab completion
# . <(grunt --completion=bash 2>/dev/null)

##############
# babel      #
##############

export BABEL_CACHE_PATH="$XDG_CACHE_HOME/babel.json"

##############
# yarn       #
##############

alias yarn='yarn --use-yarnrc "${XDG_CONFIG_HOME:?}/yarnrc"'
