# -*- encoding: utf-8 -*-
$:.push File.expand_path("../kaminari-core/lib", __FILE__)
require "kaminari/version"

Gem::Specification.new do |s|
  s.name        = 'kaminari'
  s.version     = Kaminari::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Akira Matsuda']
  s.email       = ['ronnie@dio.jp']
  s.homepage    = 'https://github.com/amatsuda/kaminari'
  s.summary     = 'A pagination engine plugin for Rails 3'
  s.description = 'Kaminari is a Scope & Engine based, clean, powerful, customizable and sophisticated paginator for Rails 3'

  s.rubyforge_project = 'kaminari'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.extra_rdoc_files = ['README.rdoc']
  s.require_paths = ['lib']

  s.licenses = ['MIT']

  s.add_dependency 'kaminari-core'
  s.add_dependency 'kaminari-activerecord'
  s.add_dependency 'kaminari-datamapper'
  s.add_dependency 'kaminari-mongoid'
  s.add_dependency 'kaminari-mongomapper'
  s.add_dependency 'kaminari-rails'
end
