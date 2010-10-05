source ~/.bash/exports.sh
source ~/.bash/completion.sh
source ~/.bash/prompt.sh
source ~/.bash/aliases.sh
source ~/.bash/svn_enhancements.sh
source ~/.bash/maven_color.sh

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.

##
# Your previous /Users/mike/.bash_profile file was backed up as /Users/mike/.bash_profile.macports-saved_2010-09-30_at_07:31:30
##

# MacPorts Installer addition on 2010-09-30_at_07:31:30: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

