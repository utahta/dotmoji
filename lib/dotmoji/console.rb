require 'thor'

module Dotmoji

  class Console < Thor
    desc "display [OPTION]", "display dot data"
    option :text, type: :string, required: true, aliases: '-t', desc: 'text'
    def display
      str = options[:text]
      data = Dotmoji.map_data(str)
      data.each do |y|
        y.each do |x|
          print x == 1 ? '#' : ' '
        end
        print "\n"
      end
    end
  end

end
