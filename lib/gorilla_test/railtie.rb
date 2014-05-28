require 'gorilla_test/view_helper'
module GorillaTest
  class Railtie < Rails::Railtie
    initializer "setup config" do
      ActionView::Base.send(:include, GorillaTest::ViewHelper)
    end
  end
end