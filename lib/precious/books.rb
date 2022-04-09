# frozen_string_literal: true

module Precious
  module API
    module V2
      class Books < Base
        # GET https://the-one-api.dev/v2/book
        def get_books(limit: 0, page: 0, offset: 0)
          params = {
            limit: limit
          }

          params.merge(page: page) if page > 0
          params.merge(offset: offset) if offset > 0
          
          request(
            http_method: :get,
            endpoint: "book",
            params: params
          )
        end

        # GET https://the-one-api.dev/v2/book/{id}
        def get_book(id:)
          params = {
            _id: id
          }

          request(
            http_method: :get,
            endpoint: "book",
            params: params
          )
        end

        # GET https://the-one-api.dev/v2/book/{id}/chapters
        def get_book_chapters(id:, limit: 0, page: 0, offset: 0)
          params = {
            _id: id
          }

          params = params.merge(limit: limit) if limit > 0
          params = params.merge(page: page) if page > 0
          params = params.merge(offset: offset) if offset > 0

          request(
            http_method: :get,
            endpoint: "book/#{id}/chapter",
            params: params
          )
        end
      end
    end
  end
end
