require 'dugaire'
require 'ordu'
require 'json'

module Dugaire
  # Main command-line interface for Dugaire
  class CLI < Ordu
    option('-h', '--help', 'this is it') { die(self, 0) }
    option('-v', '--[no-]verbose', 'print more stuff') { |v| $verbose = v }
    option('-D', '--[no-]debug', 'print internals') { |v| $debug = v }

    command('registry', 'work with docker registries') do
      include Dugaire::Registry::CLI
    end

    command('machine', 'work with docker machines') do
      include Dugaire::Machine::CLI
    end

    command('server', 'start a server') do
      include Dugaire::Server::CLI
    end

    def die(msg, code = 1)
      puts msg
      exit code
    end
  end
end
