# -*- mode: ruby -*-
# vi: set ft=ruby :

guard 'rspec', cmd: 'bundle exec rspec' do

  # watch /lib files
  watch(%r{^lib/(.+).rb$}) do |m|
    "spec/#{m[1]}_spec.rb"
  end

  # watch /lib/puppet files
  watch(%r{^lib/puppet/(.+).rb$}) do |m|
    "spec/#{m[1]}_spec.rb"
  end

  # watch /lib/puppet/moddeps files
  watch(%r{^lib/puppet/moddeps(.+).rb$}) do |m|
    "spec/#{m[1]}_spec.rb"
  end

  # watch /spec/ files
  watch(%r{^spec/(.+).rb$}) do |m|
    "spec/#{m[1]}.rb"
  end
end

