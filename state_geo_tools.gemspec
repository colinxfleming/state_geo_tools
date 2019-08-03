# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'state_geo_tools/version'

Gem::Specification.new do |spec|
  spec.name          = 'state_geo_tools'
  spec.version       = StateGeoTools::VERSION
  spec.authors       = ['colinxfleming']
  spec.email         = ['c3flemin@gmail.com']

  spec.summary       = 'A US geography/state utility.'
  spec.description   = 'I got sick of copying the same US states constant.'
  spec.homepage      = 'https://github.com/colinxfleming/state_geo_tools'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'minitest', '~> 5'
  spec.add_development_dependency 'rake', '~> 12'
end
