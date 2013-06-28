# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "exception_logger/version"

Gem::Specification.new do |s|
  s.name        = "exception_logger"
  s.version     = ExceptionLogger::VERSION
  s.authors     = ["Roland Guem", "Chris Wise", "Kyle Chong"]
  s.email       = ["roland.guem@gmail.com", "cwise@murmurinformatics.com", "kyle.chong@sleepygiant.com"]
  s.homepage    = "https://github.com/kyle-sge/exception_logger"
  s.summary     = %q{Exception Logger for Rails 3}
  s.description = %q{Logs exceptions inside a database table. Now available as gem for Rails3 (previously a plugin for Rails2)}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.extra_rdoc_files = ["LICENSE","README.rdoc"]

  s.add_runtime_dependency("rails", "~> 3")
  s.add_runtime_dependency("will_paginate", "~> 3")
  s.add_runtime_dependency("i18n", ">= 0.6")
  s.add_runtime_dependency("squeel", ">= 1.0")
  s.add_development_dependency "shoulda", ">= 2.11.3"
end