# -*- encoding: utf-8 -*-
require File.expand_path('../lib/rrdtool_lib/version', __FILE__)

Gem::Specification.new do |s|
  s.authors       = ["Nicolas Brousse"]
  s.email         = ["pro@nicolas-brousse.fr"]
  s.date = `git log --pretty="%ai" -n 1`.split(" ").first
  s.description   = %q{An RRDtool cli}
  s.summary       = %q{RRDtool cli}
  s.homepage      = "http://github.com/nicolas-brousse/rrdtool_lib-gem"

  s.files         = `git ls-files`.split($\)
  s.executables   = s.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.name          = "rrdtool_lib"
  s.require_paths = ["lib"]
  s.version       = RrdtoolLib::VERSION

  s.extensions << 'ext/rrdtool/extconf.rb'
end
