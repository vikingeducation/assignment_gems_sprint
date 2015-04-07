# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rps_telwell/version'

Gem::Specification.new do |spec|
  spec.name          = "rps_telwell"
  spec.version       = RpsTelwell::VERSION
  spec.authors       = ["Trevor Elwell"]
  spec.email         = ["me@trevorelwell.com"]

  spec.summary       = "For my coding school, VCS, I need to make a rock, paper, scissors gem."
  spec.description   = "One of my assignments is to make a rock, paper, scissors gem and make sure it's up and running!"
  spec.homepage      = "http://trevorelwell.com"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "http://rubygems.org"
  end

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end
