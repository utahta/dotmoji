# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dotmoji/version'

Gem::Specification.new do |spec|
  spec.name          = "dotmoji"
  spec.version       = Dotmoji::VERSION
  spec.authors       = ["utahta"]
  spec.email         = ["labs.ninxit@gmail.com"]
  spec.summary       = %q{Get the dot data from the character}
  spec.description   = %q{Get the dot data from the character}
  spec.homepage      = "https://github.com/utahta/dotmoji"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency 'rspec', '~> 3.1.0'

  spec.add_dependency 'rmagick', '~> 2.13.4'
  spec.add_dependency 'thor', '~> 0.19.1'
end
