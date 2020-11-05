$LOAD_PATH.push File.expand_path('lib', __dir__)

# Maintain your gem's version:
require 'helena/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'helena'
  s.version     = Helena::VERSION
  s.authors     = ['Markus Graf']
  s.email       = ['info@markusgraf.ch']
  s.licenses    = ['GPL-3.0+']
  s.homepage    = 'https://github.com/gurix/helena'
  s.summary     = 'Helena is an online survey/test framework designed for agile
survey/test development, longitudinal studies and instant feedback.'
  s.description = 'Helena is an online survey/test framework designed for agile
survey/test development, longitudinal studies and instant feedback.'

  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {spec}/*`.split("\n")

  s.add_dependency 'mongoid'
  s.add_dependency 'mongoid-simple-tags'
  s.add_dependency 'mongoid-tree'
  s.add_dependency 'mongoid_orderable'
  s.add_dependency 'rails', '= 5.1.7'
  s.add_dependency 'rails-i18n'
  s.add_dependency 'responders'
  s.add_dependency 'sass-rails'
  s.add_dependency 'simple_form'
  s.add_dependency 'slim'

  s.add_development_dependency 'capybara'
  s.add_development_dependency 'factory_bot_rails'
  s.add_development_dependency 'faker'
  s.add_development_dependency 'rspec-collection_matchers'
  s.add_development_dependency 'rspec-rails'
end
