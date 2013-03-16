# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'unboxed/capistrano/recipes/version'

Gem::Specification.new do |spec|
  spec.name          = "unboxed-capistrano-recipes"
  spec.version       = Unboxed::Capistrano::Recipes::VERSION
  spec.authors       = ["Attila Györffy"]
  spec.email         = ["attila.gyorffy@unboxedconsulting.com"]
  spec.description   = %q{A list of Capistrano recipes that Unboxed Consulting commonly uses}
  spec.summary       = %q{Unboxed Consulting's Capistrano recipes}
  spec.homepage      = "http://github.com/unboxed/unboxed-capistrano-recipes"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'capistrano'

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
