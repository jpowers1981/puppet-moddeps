require 'codeclimate-test-reporter'
require 'simplecov'
require 'coveralls'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
  Coveralls::SimpleCov::Formatter,
  SimpleCov::Formatter::HTMLFormatter,
  CodeClimate::TestReporter::Formatter
]
SimpleCov.start 'rails'

require 'pry'
require 'puppet/moddeps'
