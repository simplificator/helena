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

  s.add_dependency 'mongoid', '>= 4.0'
  s.add_dependency 'mongoid-simple-tags', '>= 0.1.3'
  s.add_dependency 'mongoid-tree', '>= 2.0'
  s.add_dependency 'mongoid_orderable', '>= 5.2'
  s.add_dependency 'rails', '= 5.0.7'
  s.add_dependency 'rails-i18n', '>= 4.0'
  s.add_dependency 'responders', '>= 2.0'
  s.add_dependency 'sass-rails', '>= 5.0'
  s.add_dependency 'simple_form', '>= 4'
  s.add_dependency 'slim', '>= 3.0'

  s.add_development_dependency 'capybara', '>= 2.3'
  s.add_development_dependency 'factory_bot_rails'
  s.add_development_dependency 'faker', '>= 1.4'
  s.add_development_dependency 'rspec-collection_matchers', '>= 1'
  s.add_development_dependency 'rspec-rails', '>= 3'
end
