#!/usr/bin/env gem build

require_relative 'lib/capistrano/unicorn/version'

Gem::Specification.new 'capistrano-unicorn', Capistrano::Unicorn::VERSION do |spec|
  spec.summary          = 'Unicorn specific tasks for Capistrano'
  spec.author           = 'Maik Kempe'
  spec.email            = 'mkempe@bitaculous.com'
  spec.homepage         = 'https://bitaculous.github.io/capistrano-unicorn/'
  spec.license          = 'MIT'
  spec.files            = Dir['{lib,spec}/**/*', 'LICENSE', 'README.md']
  spec.extra_rdoc_files = ['LICENSE', 'README.md']

  spec.required_ruby_version     = '~> 2.2'
  spec.required_rubygems_version = '~> 2.4'

  spec.add_development_dependency 'rake',  '~> 10.5', '>= 10.5.0'
  spec.add_development_dependency 'rspec', '~> 3.4',  '>= 3.4.0'
end