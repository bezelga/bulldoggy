# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bulldog/version'

Gem::Specification.new do |spec|
  spec.name          = "bulldog"
  spec.version       = Bulldog::VERSION
  spec.authors       = ["Fabiano B."]
  spec.email         = ["fabiano@fbzga.com"]
  spec.summary       = %q{Todo list app inspired by Uncle Bob's Clean Architecture}
  spec.description   = spec.summary
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
