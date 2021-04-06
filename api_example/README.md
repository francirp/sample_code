# Overview
This is sample code for creating an API Wrapper on a project using the `httparty` gem.

# Setup
1. Copy/Paste `mailchimp/api_wrapper.rb` and `mailchimp/api_request.rb`. Change the folder and module name to the API you are wrapping (e.g replace "mailchimp" with whatever makes more sense for your project)
2. Change the ENV variables in `api_wrapper.rb` to variables relevant for your project.
3. For a given endpoint you want to wrap, create a new class named with a verb such as "GetTransaction" or "CreateCart". See `bread/get_transaction.rb` for a `get` example or `mailchimp/add_cart.rb` for a `post` example.
4. You should be able to use this wrapper class now. It'll look something like: `Mailchimp::AddCart.new.call`