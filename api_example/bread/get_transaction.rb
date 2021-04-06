module Bread
  class GetTransaction
    include ApiRequest

    attr_reader :token

    def initialize(token)
      @token = token
    end

    def call
      response = client.get("/transactions/#{token}")
    end
  end
end