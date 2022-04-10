# frozen_string_literal: true

RSpec.describe Precious::API::V2::Characters do
  context "#characters" do
    it "GET a payload of characters" do
      VCR.use_cassette("get_characters") do
        response = described_class.new(API_KEY).get_characters
        expect(response["docs"].count).to be(933)
        expect(response).to be_a(Hash)
      end
    end

    it "GET a payload of character with id" do
      VCR.use_cassette("get_character") do
        response = described_class.new(API_KEY).get_character(id: "5cdbe73516d496d2c2940848")
        expect(response["docs"].count).to be(1)
        expect(response).to be_a(Hash)
      end
    end

    it "GET a payload of character quotes with id" do
      VCR.use_cassette("get_character_quotes") do
        response = described_class.new(API_KEY).get_character_quotes(id: "5cdbe73516d496d2c2940848")
        expect(response["total"]).to be(1)
        expect(response).to be_a(Hash)
      end
    end
  end
end
