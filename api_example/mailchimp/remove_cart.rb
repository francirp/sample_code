module Mailchimp
  class RemoveCart
    include ApiRequest

    attr_reader :email

    def initialize(email)
      @email = email
    end

    def call
      audience_id = ENV['MAILCHIMP_ABANDONED_CART_AUDIENCE_ID']
      response = client.delete("/lists/#{audience_id}/members/#{subscriber_hash}")
      response['data']
    end

    def subscriber_hash
      Digest::MD5.hexdigest(email)
    end
  end
end