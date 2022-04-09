# frozen_string_literal: true

module Precious
  class Base
    API_ENDPOINT = "https://the-one-api.dev/v2/"

    attr_reader :api_key

    def initialize(api_key = nil)
      @api_key = api_key
    end

    private

    def request(http_method:, endpoint:, params: {})
      response = client.public_send(http_method, endpoint, params)
      Oj.load(response.body)
    end

    def client
      @_client ||= Faraday.new(API_ENDPOINT) do |client|
        client.request :url_encoded
        client.adapter Faraday.default_adapter
        client.headers["Content-Type"] = "application/json"
        client.headers["Authorization"] = "Bearer #{api_key}" unless api_key&.nil?
      end
    end
  end
end
