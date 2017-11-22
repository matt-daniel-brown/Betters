require "betters/version"
require 'fileutils'
require 'pathname'
require 'thor'

module Betters
  class Generator < Thor
    map ['-v', '--version'] => :version
    map ['scaffold'] => :install
    map ['delete'] => :remove
    
    
    desc 'install', 'Install Betters into your prject'
    method_options path: :string
    def install
      if betters_files_already_exist?
        puts "Betters files already installed, doing nothing."
      else
        install_files
        puts "Betters files install to #{install_path}/base"
      end
    end
    
    desc 'reset', 'Reset Betters'
    def reset
      if betters_files_already_exist?
        remove_betters_directory
        install_files
        puts "Betters files updated."
      else
        puts "No existing Betters installations. Doing nothing."
      end
    end
    
    desc 'remove', 'Remove Betters'
    def remove
      if betters_files_already_exist?
        remove_betters_directory
        puts "Betters was successfully removed."
      else
        puts "No existing Betters installation. Doing nothing."
      end
    end
    
    desc 'version', 'Show Betters version'
    def version
      say "Betters #{Betters::VERSION}"
    end
    
    
    private

    def betters_files_already_exist?
      File.directory?(install_path)
    end

    def install_path
      Pathname.new(options[:path].to_s).join('base')
    end
    
    def install_files
      FileUtils.mkdir_p(install_path)
      FileUtils.cp_r(all_stylesheets, install_path)
    end


    def remove_betters_directory
      FileUtils.rm_rf("base")
    end

    def all_stylesheets
      Dir["#{stylesheets_directory}/*"]
    end

    def stylesheets_directory
      File.join(top_level_directory, "core")
    end

    def top_level_directory
      File.dirname(File.dirname(File.dirname(__FILE__)))
    end
    
  end
end
