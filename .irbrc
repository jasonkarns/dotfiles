require 'rubygems'
require 'utility_belt'
require 'irb/completion'
=begin
require 'map_by_method'
IRB.conf[:AUTO_INDENT]=true
=end

# load project-level .irbrc if it exists (in cwd)
if Dir.pwd.downcase != File.expand_path("~").downcase
  local_irbrc = File.expand_path '.irbrc'
  if File.exist? local_irbrc
    puts "Loading #{local_irbrc}"
    load local_irbrc
  end
end
