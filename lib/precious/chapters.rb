# frozen_string_literal: true

module Precious
  module API
    module V2
      class Chapters < Base
        # GET https://the-one-api.dev/v2/chapter
        def get_chapters(limit: 0, page: 0, offset: 0)
          params = {
            limit: limit
          }
          params = params.merge(page: page) if page > 0
          params = params.merge(offset: offset) if offset > 0

          request(
            http_method: :get,
            endpoint: "chapter",
            params: params
          )
        end

        # GET https://the-one-api.dev/v2/chapter/{id}
        def get_chapter(id:)
          params = {
            _id: id
          }

          request(
            http_method: :get,
            endpoint: "chapter",
            params: params
          )
        end
      end
    end
  end
end
