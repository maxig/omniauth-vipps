# frozen_string_literal: true

require_relative "lib/omniauth-vipps/version"

Gem::Specification.new do |spec|
  spec.name    = "omniauth-vipps"
  spec.version = Omniauth::Vipps::VERSION
  spec.authors = ["Maksim Hardziyenak"]
  spec.email   = ["aikismax@gmail.com"]

  spec.summary     = "Vipps Mobilepay OmniAuth Strategy for Login"
  spec.description = "Vipps Mobilepay OmniAuth Strategy for Login"
  spec.homepage    = "https://github.com/maxig/omniauth-vipps"
  spec.license     = "MIT"

  spec.metadata["homepage_uri"]    = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"]   = "#{ spec.homepage }/CHANGELOG.md"

  spec.executables    = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  spec.files          = `git ls-files`.split("\n")
  spec.test_files     = `git ls-files -- {test,spec,features}/*`.split("\n")
  spec.require_paths = ["lib"]

  spec.add_dependency 'omniauth-oauth2', "~> 1.8"

  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rack-test'

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
