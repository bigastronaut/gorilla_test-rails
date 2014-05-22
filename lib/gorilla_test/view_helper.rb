module GorillaTest

  class ViewHelper

    def gorilla_test_script
      javascript_include_tag("https://www.gorillatest.com/assets/recordv2.js" data: {project_id: ENV["GORILLATEST_PROJECT_ID"],
                                                                                     api_key:    ENV["GORILLATEST_API_KEY"]})


    end

  end

end
