# frozen_string_literal: true

module Precious
  module API
    module V2
      class Quotes < Base
        # GET https://the-one-api.dev/v2/quote
        def get_quotes(limit: 0, page: 0, offset: 0)
          params = set_params(limit: limit, page: page, offset: offset)

          request(
            http_method: :get,
            endpoint: "quote",
            params: params
          )
        end

        # GET https://the-one-api.dev/v2/quote/{id}
        def get_quote(id:)
          params = {
            _id: id
          }

          request(
            http_method: :get,
            endpoint: "quote",
            params: params
          )
        end
      end
    end
  end
end
