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
  spec.require_paths = ["lib", "ext"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake-compiler"

  # get an array of submodule dirs by executing 'pwd' inside each submodule
  `git submodule --quiet foreach pwd`.split($\).each do |submodule_path|
    # for each submodule, change working directory to that submodule
    Dir.chdir(submodule_path) do

      # issue git ls-files in submodule's directory
      submodule_files = `git ls-files`.split($\)

      # prepend the submodule path to create absolute file paths
      submodule_files_fullpaths = submodule_files.map do |filename|
        "#{submodule_path}/#{filename}"
      end

      # remove leading path parts to get paths relative to the gem's root dir
      # (this assumes, that the gemspec resides in the gem's root dir)
      submodule_files_paths = submodule_files_fullpaths.map do |filename|
        filename.gsub "#{File.dirname(__FILE__)}/", ""
      end

      # add relative paths to gem.files
      spec.files += submodule_files_paths
    end
  end

  spec.extensions << 'ext/rrdtool/bindings/ruby/extconf.rb'
end
