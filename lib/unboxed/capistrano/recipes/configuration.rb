module Unboxed
  module Capistrano
    module Recipes
      class Configuration

        CONFIGURATION = ::Capistrano::Configuration.respond_to?(:instance) ? ::Capistrano::Configuration.instance(:must_exist) : ::Capistrano.configuration(:must_exist)

        def self.load(&block)
          CONFIGURATION.load(&block)
        end
      end
    end
  end
end
