module Bread
  module ApiRequest
    def client
      @client ||= ApiWrapper.new
    end
  end
end