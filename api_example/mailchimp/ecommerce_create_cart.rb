# Not Operational --> would need to get all of our products/variants into Mailchimp
module Mailchimp
  class EcommerceCreateCart
    # include ApiRequest

    # attr_reader :cart, :customer

    # def initialize(cart)
    #   @cart = cart
    #   @customer = cart.customer
    # end

    # def call
    #   store_id = '1' # created the store via API and set ID to 1
    #   response = client.post("/ecommerce/stores/#{store_id}/carts", options)
    #   binding.pry
    #   response['data']
    # end

    # def options
    #   {
    #     body: {
    #       id: cart.reference,
    #       customer: {
    #         id: customer.id.to_s,
    #         opt_in_status: false,
    #         email_address: customer.email,
    #         first_name: customer.first_name,
    #         last_name: customer.last_name,
    #       },
    #       currency_code: 'USD',
    #       order_total: cart.total,
    #       lines: bed_configuration_lines + custom_item_lines,
    #     }.to_json
    #   }
    # end    

    # def bed_configuration_lines
    #   cart.bed_configurations.map do |bed_configuration|
    #     {
    #       id: bed_configuration.id.to_s,
    #       product_id: bed_configuration.product_id.to_s,
    #       product_variant_id: bed_configuration.product_id.to_s,
    #       quantity: bed_configuration.quantity,
    #       price: bed_configuration.total / 100,
    #     }
    #   end
    # end

    # def custom_item_lines
    #   cart.custom_items.map do |custom_item|
    #     {
    #       id: custom_item.id.to_s,
    #       product_id: custom_item.name,
    #       product_variant_id: custom_item.name,          
    #       quantity: custom_item.quantity,
    #       price: custom_item.price_in_cents / 100,
    #     }
    #   end      
    # end
  end
end