require 'net/http'
require 'autotest'
module Rails
  module GorillaTest
    class Railtie < Rails::Railtie
      initializer "setup config" do
        begin
          ActionView::Base.send(:include, ::AutoTest::ViewHelper)
        end
      end
    end
  end
end
