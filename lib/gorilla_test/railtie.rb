require 'net/http'
require 'autotest'
module Rails
  module GorillaTest
    class Railtie < Rails::Railtie
      initializer "setup config" do
        begin
          ActionView::Base.send(:include, ::GorillaTest::ViewHelper)
        end
      end
    end
  end
end
