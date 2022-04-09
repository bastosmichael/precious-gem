# frozen_string_literal: true

module Precious
  module API
    module V2
      class Characters < Base
        # GET https://the-one-api.dev/v2/character
        def get_characters
          request(
            http_method: :get,
            endpoint: "character"
          )
        end

        # GET https://the-one-api.dev/v2/character/{id}
        def get_character(id)
          request(
            http_method: :get,
            endpoint: "character/#{id}"
          )
        end

        # GET https://the-one-api.dev/v2/character/{id}/quote
        def get_character_quotes(id)
          request(
            http_method: :get,
            endpoint: "character/#{id}/quote"
          )
        end
      end
    end
  end
end
