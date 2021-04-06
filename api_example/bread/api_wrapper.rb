module Bread
  class ApiWrapper
    include HTTParty
    base_uri ENV['BREAD_API']

    attr_reader :token

    def token
      @token ||= Base64.strict_encode64("#{ENV['BREAD_API_KEY']}:#{ENV['BREAD_API_SECRET']}")
    end

    def get(endpoint, options = {})
      self.class.get(endpoint, options.merge(default_options))
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