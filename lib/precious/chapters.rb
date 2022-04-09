# frozen_string_literal: true

module Precious
  module API
    module V2
      class Chapters < Base
        # GET https://the-one-api.dev/v2/chapter
        def get_chapters
          request(
            http_method: :get,
            endpoint: "chapter"
          )
        end

        # GET https://the-one-api.dev/v2/chapter/{id}
        def get_chapter(id)
          request(
            http_method: :get,
            endpoint: "chapter/#{id}"
          )
        end
      end
    end
  end
end
