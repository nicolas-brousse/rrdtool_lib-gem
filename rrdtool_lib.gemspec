# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rrdtool_lib/version'

Gem::Specification.new do |spec|
  spec.name          = "rrdtool_lib"
  spec.version       = RrdtoolLib::VERSION
  spec.authors       = ["Nicolas Brousse"]
  spec.email         = ["pro@nicolas-brousse.fr"]
  spec.description   = %q{An RRDtool cli}
  spec.summary       = %q{RRDtool cli}
  spec.date          = `git log --pretty="%ai" -n 1`.split(" ").first
  spec.homepage      = "http://github.com/nicolas-brousse/rrdtool_lib-gem"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"

  spec.extensions << 'ext/rrdtool/extconf.rb'
end
