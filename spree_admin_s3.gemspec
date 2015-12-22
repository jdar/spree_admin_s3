# coding: utf-8
lib = File.expand_path('../lib/', __FILE__)
$LOAD_PATH.unshift lib unless $LOAD_PATH.include?(lib)

require 'spree_admin_s3/version'

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_admin_s3'
  s.version     = SpreeAdminS3.version
  s.summary     = 'Adds simple admin page'
  s.description = 'Simplest page that could work.'
  s.required_ruby_version = '>= 2.1.0'

  s.authors       = ['Darius Roberts']
  s.homepage      = 'https://github.com/spree/spree_admin_s3'
  s.license       = 'BSD-3'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- spec/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'rspec-rails', '~> 3.1.0'
end
