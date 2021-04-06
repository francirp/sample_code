module Mailchimp
  class AddCart
    include ApiRequest

    attr_reader :cart, :customer

    def initialize(cart)
      @cart = cart
      @customer = cart.customer
    end

    def call
      audience_id = ENV['MAILCHIMP_ABANDONED_CART_AUDIENCE_ID']
      response = client.post("/lists/#{audience_id}/members", options)
      response['data']
    end

    def options
      {
        body: {
          email_address: customer.email,
          status: 'transactional',
          merge_fields: {
            'FNAME' => customer.first_name,
            'LNAME' => customer.last_name,
            'CARTID' => cart.reference,
          },
        }.to_json
      }
    end
  end
end