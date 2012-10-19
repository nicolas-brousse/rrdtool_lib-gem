Gem::Specification.new do |s|
  s.name        = 'rrdtool'
  s.version     = '0.0.1'
  s.date        = '2012-10-19'
  s.summary     = "RRDtool cli"
  s.description = "An RRDtool cli"
  s.authors     = ["Nicolas Brousse"]
  s.email       = 'pro@nicolas-brousse.fr'
  s.required_ruby_version = '>= 1.9.2'
  s.files = Dir['lib/**/*.rb'] + Dir['rrdtool/**/*'] + ['LICENSE', 'README.md']
  s.homepage    =
    'http://github.com/nicolas-brousse/rrdtool'
end