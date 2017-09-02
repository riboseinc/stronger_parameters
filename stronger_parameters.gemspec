# (c) Copyright 2017 Ribose Inc.
#

# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "stronger_parameters/version"

Gem::Specification.new do |spec|
  spec.name          = "stronger_parameters"
  spec.version       = StrongerParameters::VERSION
  spec.authors       = ["Ribose Inc."]
  spec.email         = ["open.source@ribose.com"]

  spec.summary       = "Advanced parameter constraints and validations for " \
                       "Rails controllers"
  spec.homepage      = "https://github.com/riboseinc/stronger_parameters"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rubocop", "~> 0.49.1"
  spec.add_development_dependency "rspec", "~> 3.0"
end
