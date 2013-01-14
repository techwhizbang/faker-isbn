# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "faker-isbn/version"

Gem::Specification.new do |s|
  s.name        = "faker-isbn"
  s.version     = Faker::ISBN::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Nick Zalabak"]
  s.email       = ["techwhizbang@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Generates fake 13 digit ISBN's for your test suite/database}
  s.description = %q{A faker extension that generates 13 digit ISBN's for your test suite/database}

  s.rubyforge_project = "faker-isbn"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.add_dependency(%q<bookland>, ["~> 2.0.0"])
end
