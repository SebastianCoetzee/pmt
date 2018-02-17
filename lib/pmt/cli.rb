require 'rubygems'
require 'commander'

module Pmt
  class Cli
    include Commander::Methods

    def run
      program :name, 'pmt'
      program :version, Pmt::VERSION
      program :description, 'Command that prints a multiplication table of the first N prime numbers'

      command :print do |c|
        c.syntax = 'pmt print [options]'
        c.description = 'Prints a multiplication table of the first N prime numbers'
        c.option '--count NUMBER', Integer, 'The number of prime numbers to print'
        c.action do |args, options|
          options.default(
            count: 10
          )

          puts MultiplicationTable.new(options.count).to_s
        end
      end

      default_command :print

      run!
    end
  end
end
