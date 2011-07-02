
# =================================================================================
# Switching Rubies
#   MinGW is kinda funny when it comes to managing multiple Rubies.  I wasn't
#   able to get either pik (for Windows) or rvm to work in the MinGW environment.
#
#   I wasn't able to get pik or rvm working in Cygwin either.  And while I haven't
#   tested this module with Cygwin, as a pure shell script solution, I am hopeful
#   that it will work.  Just haven't had a chance to test it yet.
#
# =================================================================================

# needed so it'll work the first time
export PATH=/dummy/ruby/placeholder:$PATH

use_ruby() {
  export RUBY_TYPE=$1
  export RUBY_VERSION=$2

  # find the desired version of ruby and trim
  # the trailing forward slash
  NEXT_RUBY=$(                 \
        ls -d1 /c/*uby*        \
      | grep -i $RUBY_TYPE     \
      | grep -i $RUBY_VERSION  \
      | sed 's:/$::'           )

  # remove old ruby from --and add the desired
  # ruby to-- the path
  NEW_PATH=$NEXT_RUBY/bin:$(   \
        echo $PATH             \
      | tr ":" "\n"            \
      | sed "s:.*ruby.*::i"    \
      | tr "\n" ":"            \
      | sed 's/:*$//'          )

  # remove any duplicate colons that might've
  # gotten in
  export PATH=$(               \
        echo $NEW_PATH         \
      | sed 's/::/:/g'         )

  # some nice environment variables you might
  # want to use.  Note that could be used for
  # scripts which need run whether we're using
  # ruby or jruby.
  if [ "$RUBY_TYPE" == "ruby" ]; then
    export JRUBY_HOME=
    export RUBY_HOME=$NEXT_RUBY
    export RUBY_EXEC="ruby.exe"
  else
    export RUBY_HOME=
    export JRUBY_HOME=$NEXT_RUBY
    export RUBY_EXEC="jruby.exe"
  fi

  export GEM_EXEC="$RUBY_EXEC -S gem"
  export IRB_EXEC="$RUBY_EXEC -S irb"

  # These aliases supplied for MinGW so that
  # it will not inadvertantly execute the
  # shell scripts provided with ruby/jruby
  alias ruby='$RUBY_EXEC'
  alias jruby='$RUBY_EXEC'
  alias gem='$GEM_EXEC'
  alias jgem='$GEM_EXEC'
  alias irb='$IRB_EXEC'
  alias jirb='$IRB_EXEC'

  # gimme some kinda sign!
  $RUBY_EXEC -v
}
