def load_gem(gem_name = nil, &block)
  begin
    require "#{gem_name.to_s}" if gem_name
    yield block if block
  rescue LoadError => e
    puts "Error loading gem in #{__FILE__}: #{e.message}"
  end
end

load_gem 'rubygems'
load_gem 'irb/completion'
load_gem 'pp'

load_gem 'wirble' do
  Wirble.init
  Wirble.colorize
end

load_gem 'hirb' do
  Hirb.enable :output=>{'Object'=>{:class=>:auto_table, :ancestor=>true}}
end

load_gem do
  # Use the simple prompt if possible.
  IRB.conf[:PROMPT_MODE] = :SIMPLE

  # Let irb automatically indent lines
  IRB.conf[:AUTO_INDENT] = true
end