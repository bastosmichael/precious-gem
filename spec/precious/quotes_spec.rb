# frozen_string_literal: true

RSpec.describe Precious::API::V2::Quotes do
  context "#quotes" do
    it "GET a payload of quotes" do
      VCR.use_cassette("get_quotes") do
        response = described_class.new(API_KEY).get_quotes
        expect(response).to be_a(Hash)
      end
    end

    it "GET a payload of quote with id" do
      VCR.use_cassette("get_quote") do
        response = described_class.new(API_KEY).get_quote(id: "5cdbe73516d496d2c2940848")
        expect(response).to be_a(Hash)
      end
    end
  end
end
