# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'proby/version'

Gem::Specification.new do |s|
  s.name        = "proby"
  s.license     = "MIT"
  s.version     = Proby::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["John Wood", "Doug Barth"]
  s.email       = ["john@signalhq.com", "doug@signalhq.com"]
  s.homepage    = "http://github.com/signal/proby-ruby"
  s.summary     = %Q{A simple library for working with the Proby task monitoring application.}
  s.description = %Q{A simple library for working with the Proby task monitoring application.}

  s.rubyforge_project = "proby"

  s.required_rubygems_version = ">= 1.3.6"

  s.add_dependency 'httparty', '~> 0.12.0'
  s.add_dependency 'chronic', '~> 0.10.2'
  s.add_dependency 'multi_json', '~> 1.0'

  s.add_development_dependency "bundler", ">= 1.0.0"
  s.add_development_dependency "rake", "~> 0.9.0"
  s.add_development_dependency "yard", "~> 0.6.4"
  s.add_development_dependency "bluecloth", "~> 2.1.0"
  s.add_development_dependency "fakeweb", "~> 1.3.0"
  s.add_development_dependency "mocha", "~> 0.10.5"
  s.add_development_dependency "shoulda", "~> 2.11.3"
  s.add_development_dependency "json", "~> 1.6.6"

  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  s.require_path = 'lib'
end

