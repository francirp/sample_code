module Mailchimp
  class ApiWrapper
    include HTTParty
    base_uri ENV['MAILCHIMP_API']

    attr_reader :token

    def token
      @token ||= Base64.strict_encode64("#{ENV['MAILCHIMP_USERNAME']}:#{ENV['MAILCHIMP_API_KEY']}")
    end

    def get(endpoint, options = {})
      self.class.get(endpoint, options.merge(default_options))
    end

    def post(endpoint, options = {})
      self.class.post(endpoint, options.merge(default_options))
    end
    
    def delete(endpoint, options = {})
      self.class.delete(endpoint, options.merge(default_options))
    end    

    private
    
    def default_options
      {
        headers: {
          'Authorization' => "Basic #{token}",
          'Content-Type' => 'application/json',
        }
      }
    end    
  end
end