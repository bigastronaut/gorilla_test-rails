module GorillaTest

  class Configuration

    attr_accessor :ssl_api_url,
                  :nonssl_api_url,
                  :api_key,
                  :project_id,
                  :env

    def initialize #:nodoc:
      @ssl_api_url    = AUTOTEST_API_URL
      @nonssl_api_url = AUTOTEST_NON_SSL_API_URL
      @api_key        = ENV['AUTOTEST_API_KEY']
      @project_id     = ENV['AUTOTEST_PROJECT_ID']
      @env            = ENV['AUTOTEST_ENV']
    end

    def api_server_url(ssl = nil) #:nodoc:
      ssl = use_ssl_by_default if ssl.nil?
      ssl ? ssl_api_url : nonssl_api_url
    end

  end

end
