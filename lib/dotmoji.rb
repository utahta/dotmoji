require 'RMagick'
require 'dotmoji/version'
require 'dotmoji/mapping'

module Dotmoji
  module_function

  def map_data(str)
    Mapping.new.get(str)
  end
end
