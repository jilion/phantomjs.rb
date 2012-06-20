# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "phantomjs/version"

Gem::Specification.new do |s|
  s.name        = "phantomjs.rb"
  s.version     = Phantomjs::VERSION
  s.platform    = Gem::Platform::CURRENT
  s.authors     = ["William Estoque"]
  s.email       = ["william.estoque@gmail.com"]
  s.homepage    = "http://westoque.com"
  s.summary     = %q{Ruby wrapper for phantomjs}
  s.description = %q{Ruby wrapper for phantomjs}

  s.rubyforge_project = "phantomjs.rb"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'phantomjs-linux64'
  s.add_dependency 'phantomjs-linux'
  s.add_dependency 'phantomjs-mac'

  s.add_development_dependency "ZenTest"
  s.add_development_dependency "rspec"
  s.add_development_dependency "rake"
end
