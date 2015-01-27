# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rock_paper_scissors_gem/version'

Gem::Specification.new do |spec|
  spec.name          = "rock_paper_scissors_gem"
  spec.version       = RockPaperScissorsGem::VERSION
  spec.authors       = ["Daniel Au"]
  spec.email         = ["Daniel_Au@gmail.com"]
  spec.summary       = %q{Rock, paper, scissors!}
  spec.description   = %q{Some useful rock paper scissors methods}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
