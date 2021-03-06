$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "enju_leaf/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "enju_leaf"
  s.version     = EnjuLeaf::VERSION
  s.authors     = ["Kosuke Tanabe"]
  s.email       = ["nabeta@fastmail.fm"]
  s.homepage    = "https://github.com/next-l/enju_leaf"
  s.summary     = "Next-L Enju Leaf"
  s.description = "integrated library system"
  s.license     = "MIT"

  s.required_ruby_version = "~> 2.2"

  s.files = Dir["{app,config,db,lib,vendor}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"] - Dir["spec/dummy/log/*"] - Dir["spec/dummy/solr/{data,pids,default,development,test}/*"] - Dir["spec/dummy/tmp/*"]

  s.add_dependency "enju_seed", "~> 0.3.0.beta.3"
  #s.add_dependency "enju_library", "~> 0.2.0.beta.1"
  #s.add_dependency "enju_manifestation_viewer", "~> 0.2.0.beta.1"
  #s.add_dependency "elasticsearch-rails", "~> 5.0"
  s.add_dependency "bootstrap-sass", "~> 3.3.7"
  s.add_dependency "slim-rails"
  #s.add_dependency "postrank-uri"

  s.add_development_dependency "pg"
  s.add_development_dependency "rspec-rails", "~> 3.5"
  #s.add_development_dependency "enju_circulation", "~> 0.2.0.beta.1"
  #s.add_development_dependency "enju_bookmark", "~> 0.2.0.beta.1"
  #s.add_development_dependency "enju_search_log", "~> 0.2.0.beta.1"
  s.add_development_dependency "vcr"
  s.add_development_dependency "simplecov"
  s.add_development_dependency "factory_girl_rails"
  s.add_development_dependency "sunspot_matchers"
  s.add_development_dependency "rspec-activemodel-mocks"
  s.add_development_dependency "charlock_holmes"
  s.add_development_dependency "redis-rails"
  s.add_development_dependency "resque"
  s.add_development_dependency "capybara"
end
