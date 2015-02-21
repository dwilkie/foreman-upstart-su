# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'foreman/upstart/su/version'

Gem::Specification.new do |spec|
  spec.name          = "foreman-upstart-su"
  spec.version       = Foreman::Upstart::Su::VERSION
  spec.authors       = ["David Wilkie"]
  spec.email         = ["dwilkie@gmail.com"]
  spec.summary       = %q{Use su instead of setuid in upstart}
  spec.description   = %q{Use su instead of setuid in upstart}
  spec.homepage      = "https://github.com/dwilkie/foreman-upstart-su"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
