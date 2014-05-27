module GorillaTest

  module ViewHelper

    include ActionView::Helpers
    include ActionPack

    def gorilla_test_script
      javascript_include_tag("https://www.gorillatest.com/assets/recordv2.js", data: {project_id: "project_id",
                                                                                      api_key:    "key"})


    end

  end

end
