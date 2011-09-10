# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "sprockets-cache-redis/version"

Gem::Specification.new do |s|
  s.name        = "sprockets-cache-redis"
  s.version     = Sprockets::Cache::Redis::VERSION
  s.authors     = ["Carl Hörberg"]
  s.email       = ["carl.hoerberg@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{A Redis cache store for Sprockets}
  s.description = %q{}

  s.rubyforge_project = "sprockets-cache-redis"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
