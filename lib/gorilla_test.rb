module GorillaTest

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configure
    config = configuration
    yield(config)
  end

  # def self.with_configuration(config)
  #   original_config = {}

  #   config.each do |key, value|
  #     original_config[key] = configuration.send(key)
  #     configuration.send("#{key}=", value)
  #   end

  #   result = yield if block_given?

  #   original_config.each { |key, value| configuration.send("#{key}=", value) }
  #   result
  # end

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

require 'gorilla_test/railtie' if defined?(Rails)
