# frozen_string_literal: true

module Precious
  module API
    module V2
      class Movies < Base
        # GET https://the-one-api.dev/v2/movie
        def get_movies
          request(
            http_method: :get,
            endpoint: "movie"
          )
        end

        # GET https://the-one-api.dev/v2/movie/{id}
        def get_movie(id)
          request(
            http_method: :get,
            endpoint: "movie/#{id}"
          )
        end

        # GET https://the-one-api.dev/v2/character/{id}/quote
        def get_movie_quotes(id)
          request(
            http_method: :get,
            endpoint: "movie/#{id}/quote"
          )
        end
      end
    end
  end
end
