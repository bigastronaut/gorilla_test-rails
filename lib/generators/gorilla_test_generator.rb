module GorillaTest
  module Generators

    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)
      desc "Creates GorillaTest initializer for your application"
      def copy_initializer
        template 'gorilla_test.rb', 'config/initializers/gorilla_test.rb'
      end
    end
  end
end