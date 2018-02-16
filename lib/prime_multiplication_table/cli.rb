require 'rubygems'
require 'commander'

module PrimeMultiplicationTable
  class Cli
    include Commander::Methods

    def run
      program :name, 'Prime Multiplication Table'
      program :version, '1.0.0'
      program :description, 'Stupid command that prints foo or bar.'

      command :print do |c|
        c.syntax = 'foobar foo'
        c.description = 'Displays foo'
        c.action do |args, options|
          say 'foo'
        end
      end

      default_command :update

      run!
    end
  end
end
