require 'bundler/gem_tasks'
require 'rake/extensiontask'

gemspec = Gem::Specification.new do |spec|
  spec.name       = "rrdtool_lib"
  spec.extensions = FileList['ext/**/extconf.rb']
end

Rake::ExtensionTask.new do |ext|
  ext.name = 'rrdtool'
  ext.ext_dir = 'ext/rrdtool'
  ext.lib_dir = 'lib/rrdtool_lib'
  ext.config_script = 'extconf.rb'
  ext.tmp_dir = 'tmp'
  ext.gem_spec = gemspec
end
