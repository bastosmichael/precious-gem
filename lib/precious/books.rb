# frozen_string_literal: true

module Precious
  module API
    module V2
      class Books < Base
        # GET https://the-one-api.dev/v2/book
        def get_books
          request(
              http_method: :get,
              endpoint: "book"
          )
        end
      end
    end
  end
end
