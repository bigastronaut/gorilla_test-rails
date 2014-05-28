require 'gorilla_test'
module GorillaTest
  class Railtie < Rails::Railtie
    initializer "setup config" do
      begin
        ActionView::Base.send(:include, ::GorillaTest::ViewHelper)
      end
    end
  end
end
require 'gorilla_test/railtie' if defined?(Rails)
