# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "shingle/version"

Gem::Specification.new do |s|
  s.name        = "shingle"
  s.version     = Shingle::VERSION
  s.authors     = ["vad"]
  s.email       = ["vad4msiu@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{TODO: Write a gem summary}
  s.description = %q{TODO: Write a gem description}

  s.rubyforge_project = "shingle"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.add_dependency "unicode"
  s.add_development_dependency "rspec"
end
