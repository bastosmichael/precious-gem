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

        # GET https://the-one-api.dev/v2/book/{id}
        def get_book(id)
          request(
            http_method: :get,
            endpoint: "book/#{id}"
          )
        end

        # GET https://the-one-api.dev/v2/book/{id}/chapters
        def get_book_chapters(id)
          request(
            http_method: :get,
            endpoint: "book/#{id}/chapter"
          )
        end
      end
    end
  end
end
