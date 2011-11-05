# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "shingling/version"

Gem::Specification.new do |s|
  s.name        = "shingling"
  s.version     = Shingling::VERSION
  s.authors     = ["vad"]
  s.email       = ["vad4msiu@gmail.com"]
  s.homepage    = ""
  s.summary     = "Shingling"
  s.description = "Shingling"

  s.rubyforge_project = "shingling"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.add_dependency "unicode"
  s.add_development_dependency "rspec"
end
