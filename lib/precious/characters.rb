# frozen_string_literal: true

module Precious
  module API
    module V2
      class Characters < Base
        # GET https://the-one-api.dev/v2/character
        def get_characters(limit: 0, page: 0, offset: 0)
          params = {
            limit: limit
          }

          params = params.merge(page: page) if page > 0
          params = params.merge(offset: offset) if offset > 0

          request(
            http_method: :get,
            endpoint: "character",
            params: params
          )
        end

        # GET https://the-one-api.dev/v2/character/{id}
        def get_character(id:)
          params = {
            _id: id
          }

          request(
            http_method: :get,
            endpoint: "character",
            params: params
          )
        end

        # GET https://the-one-api.dev/v2/character/{id}/quote
        def get_character_quotes(id:, limit: 0, page: 0, offset: 0)
          params = {
            _id: id
          }

          params = params.merge(limit: limit) if limit > 0
          params = params.merge(page: page) if page > 0
          params = params.merge(offset: offset) if offset > 0

          request(
            http_method: :get,
            endpoint: "character/#{id}/quote",
            params: params
          )
        end
      end
    end
  end
end
