module GorillaTest
  module Generators

    class GorillaTestRailtie < Rails::Generators::Base
      source_root File.expand_path("../templates", __FILE__)
      desc "Creates Jem initializer for your application"
      def copy_initializer
        template 'gorilla_test.rb', 'config/initializers/gorilla_test.rb'
      end
    end
  end
end