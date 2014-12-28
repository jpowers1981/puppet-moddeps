require 'puppet/moddeps/version'
require 'rubygems'
require 'json'

module Puppet
  module Moddeps

    @@default_module_path = '/etc/puppet/modules'
    
    def Moddeps.installDeps(*puppet_module)
      if ( puppet_module.size == 1)
        if Moddeps.checkIfInstalled(puppet_module[0])
          
        else
          puts "Can't find #{puppet_module[0]} in #{@@default_module_path}"
        end
      else
        Moddeps.help
      end
    end
    
    def Moddeps.help
      puts 'Usage: puppet-moddeps module'
      puts '       Call puppet-moddeps with the name of one installed module'
    end
    
    def Moddeps.checkIfInstalled(file)
      File.exists?(file)
    end

    def Moddeps.installModuleDependencies(puppet_module)

      @puppet_module = puppet_module
      @metadata      = File.read("#{@@default_module_path}/#{@puppet_module}/metadata.json")
      @data          = JSON.parse(@metadata)

      @data['dependencies'].each do |dep|
        @note    = 'Installing dependency'
        @depname = dep["name"].sub '/', '-'
        @cmd     = "puppet module install #{@depname}"
        puts "#{@cmd}"
        exec("#{@cmd}")
      end
    end

  end
end

