# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dugaire/version'

Gem::Specification.new do |spec|
  spec.name          = 'dugaire'
  spec.version       = Dugaire::VERSION
  spec.authors       = ['JJ Buckley']
  spec.email         = ['jj@bjjb.org']

  spec.summary       = 'A Ruby Docker client/library'
  spec.description   = <<-DESC
Provides a programattic interface for working with Docker (including docker
machine and the docker registry) a small docker registry browser and container
management UI, and a little command-line tool to complement the standard
client.
DESC
  spec.homepage      = 'https://bjjb.github.io/dugaire'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'ordu', '>= 0.0.4'
  spec.add_dependency 'sinatra', '~> 1.4'
  spec.add_development_dependency 'bundler', '~> 1.12'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'minitest', '~> 5.0'
end
