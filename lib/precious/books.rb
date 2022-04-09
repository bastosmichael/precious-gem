# frozen_string_literal: true

module Precious
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
