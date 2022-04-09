# frozen_string_literal: true

module Precious
  module API
    module V2
      class Quotes < Base
        # GET https://the-one-api.dev/v2/quote
        def get_quotes
          request(
            http_method: :get,
            endpoint: "character"
          )
        end

        # GET https://the-one-api.dev/v2/quote/{id}
        def get_quote(id)
          request(
            http_method: :get,
            endpoint: "quote/#{id}"
          )
        end
      end
    end
  end
end
