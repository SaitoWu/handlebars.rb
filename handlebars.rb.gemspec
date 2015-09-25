# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'handlebars/version'

Gem::Specification.new do |spec|
  spec.name          = "handlebars.rb"
  spec.version       = Handlebars::VERSION
  spec.authors       = ["Saito"]
  spec.email         = ["saitowu@gmail.com"]
  spec.description   = %q{Ruby Handlebars is a bridge to the JS Handlebars compiler.}
  spec.summary       = %q{bridge to the JS Handlebars compiler.}
  spec.homepage      = "https://github.com/SaitoWu/handlebar.rb"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "execjs", "~> 2.0"
  spec.add_dependency "handlebars-source", ">= 4.0"

  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.14"
  spec.add_development_dependency "bundler", "~> 1.3"
end
