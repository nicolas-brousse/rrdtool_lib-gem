# -*- encoding: utf-8 -*-
require File.expand_path('../lib/rrdtool_lib/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Nicolas Brousse"]
  gem.email         = ["pro@nicolas-brousse.fr"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = "http://github.com/nicolas-brousse/rrdtool"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "rrdtool_lib"
  gem.require_paths = ["lib"]
  gem.version       = RrdtoolLib::VERSION
end
