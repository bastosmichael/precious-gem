# frozen_string_literal: true

module Precious
  module API
    module V2
      class Movies < Base
        # GET https://the-one-api.dev/v2/movie
        def get_movies(limit: 0, page: 0, offset: 0)
          params = set_params(limit: limit, page: page, offset: offset)

          request(
            http_method: :get,
            endpoint: "movie",
            params: params
          )
        end

        # GET https://the-one-api.dev/v2/movie/{id}
        def get_movie(id:)
          params = {
            _id: id
          }

          request(
            http_method: :get,
            endpoint: "movie",
            params: params
          )
        end

        # GET https://the-one-api.dev/v2/character/{id}/quote
        def get_movie_quotes(id:, limit: 0, page: 0, offset: 0)
          params = set_params(limit: limit, page: page, offset: offset)

          request(
            http_method: :get,
            endpoint: "movie/#{id}/quote",
            params: params
          )
        end
      end
    end
  end
end
