# frozen_string_literal: true

RSpec.describe Precious::API::V2::Quotes do
  context "#quotes" do
    it "GET a payload of quotes" do
      VCR.use_cassette("get_quotes") do
        response = described_class.new(API_KEY).get_quotes
        expect(response['docs'].count).to be(1000)
        expect(response).to be_a(Hash)
      end
    end

    it "GET a payload of quote with id" do
      VCR.use_cassette("get_quote") do
        response = described_class.new(API_KEY).get_quote(id: "5cd96e05de30eff6ebccebc2")
        expect(response['docs'].count).to be(1)
        expect(response).to be_a(Hash)
      end
    end
  end
end
