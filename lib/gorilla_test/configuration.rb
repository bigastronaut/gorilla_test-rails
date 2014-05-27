module GorillaTest

  class Configuration

    GORILLA_TEST_API_URL = "https://www.gorillatest.com/api"
    GORILLA_TEST_NON_SSL_API_URL = "http://www.gorillatest.com/api"
    DEFAULT_ENV = 'production'

    attr_accessor :ssl_api_url,
                  :nonssl_api_url,
                  :api_key,
                  :project_id,
                  :env

    def initialize #:nodoc:
      @ssl_api_url    = GORILLA_TEST_API_URL
      @nonssl_api_url = GORILLA_TEST_NON_SSL_API_URL
      @api_key        = ENV['GORILLA_TEST_API_KEY']
      @project_id     = ENV['GORILLA_TEST_PROJECT_ID']
      @env            = DEFAULT_ENV
    end

    def api_server_url(ssl = nil) #:nodoc:
      ssl = use_ssl_by_default if ssl.nil?
      ssl ? ssl_api_url : nonssl_api_url
    end

  end

end
