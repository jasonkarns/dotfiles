module IRB
  module History
    DEFAULTS = {
      :file => "~/.irb_history.dat",
      :size => 200
    }
    LINE_SEPARATOR = "---_---"
    def self.save(*opts)
      settings = load_settings(opts)
      lines = Readline::HISTORY.to_a.reverse.uniq.reverse
      lines = lines[-settings[:size], settings[:size]] if lines.length > settings[:size]
      File.open(settings[:file_path], "w") do |file|
        file.truncate(0)
        file.print Marshal::dump(lines)
        file.print LINE_SEPARATOR
      end
    end
    def self.load(*opts)
      settings = load_settings(opts)
      commands = []
      $/=LINE_SEPARATOR
      File.open(settings[:file_path]).each do |object|
        commands = Marshal::load(object.chomp)
      end
      Readline::HISTORY.push(*commands)
    end

    private

    def self.load_settings(args)
      settings = DEFAULTS
      settings.merge(args[0]) if args[0]
      settings[:file_path] = File.expand_path(settings[:file])
      settings
    end
  end
end
