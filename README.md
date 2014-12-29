# Puppet::Moddeps

[![Gem Version][gem-v-img]][gem-version]

#### Master branch:
[![Build Status][travis-img-master]][travis-ci]
[![Code Climate][cc-img]][code-climate]
[![Coverage Status][coveralls-img-master]][coveralls-master]
[![Dependency Status][gemnasium-img]][gemnasium]

#### Devlop branch:
[![Build Status][travis-img-develop]][travis-ci]
[![Coverage Status][coveralls-img-develop]][coveralls-develop]

This gem will allow you to pull in all missing dependencies for a given Puppet
module. This is targeted specifically at private modules that have a populated
`metadata.json` file.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'puppet-moddeps'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install puppet-moddeps

## Usage

TODO: Write usage instructions here

## Contributing

The development environment requires at least Ruby 1.9.2 due to the use of Guard
and Coveralls.  The gem is designed to run on Ruby 1.8.7 and higher as that is
the version available in Red Hat / CentOS 6.

1. Fork it ( https://github.com/genebean/puppet-moddeps/fork )
2. Create your feature branch based off of the develop branch
   (`git checkout develop; git checkout -b my-new-feature`)
3. Install development gems (`bundle install`)
4. Open a second terminal and use guard to make sure your code doesn't break anything
   (`bundle exec guard`)
5. Commit your changes and associated tests (`git commit -am 'Add some feature'`)
6. Push to the branch (`git push origin my-new-feature`)
7. Create a new Pull Request

Please try and write tests using Rspec's expect syntax for any code you add or change.
Code must have tests before it will be merged.


[code-climate]: https://codeclimate.com/github/genebean/puppet-moddeps
[cc-img]: https://img.shields.io/codeclimate/github/genebean/puppet-moddeps.svg
[coveralls-master]: https://coveralls.io/r/genebean/puppet-moddeps?branch=master
[coveralls-develop]: https://coveralls.io/r/genebean/puppet-moddeps?branch=develop
[coveralls-img-master]: https://img.shields.io/coveralls/genebean/puppet-moddeps/master.svg
[coveralls-img-develop]: https://img.shields.io/coveralls/genebean/puppet-moddeps/develop.svg
[gem-v-img]: https://badge.fury.io/rb/puppet-moddeps.svg
[gem-version]: http://badge.fury.io/rb/puppet-moddeps
[gemnasium-img]: https://img.shields.io/gemnasium/genebean/puppet-moddeps.svg
[gemnasium]: https://gemnasium.com/genebean/puppet-moddeps
[travis-ci]: https://travis-ci.org/genebean/puppet-moddeps
[travis-img-master]: https://img.shields.io/travis/genebean/puppet-moddeps/master.svg
[travis-img-develop]: https://img.shields.io/travis/genebean/puppet-moddeps/develop.svg
