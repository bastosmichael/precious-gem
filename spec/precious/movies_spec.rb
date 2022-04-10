# frozen_string_literal: true

RSpec.describe Precious::API::V2::Movies do
  context "#movies" do
    it "GET a payload of movies" do
      VCR.use_cassette("get_movies") do
        response = described_class.new(API_KEY).get_movies
        expect(response["docs"].count).to be(8)
        expect(response).to be_a(Hash)
      end
    end

    it "GET a payload of movie with id" do
      VCR.use_cassette("get_movie") do
        response = described_class.new(API_KEY).get_movie(id: "5cd95395de30eff6ebccde5d")
        expect(response["docs"].count).to be(1)
        expect(response).to be_a(Hash)
      end
    end

    it "GET a payload of movie quotes with id" do
      VCR.use_cassette("get_movie_quotes") do
        response = described_class.new(API_KEY).get_movie_quotes(id: "5cd95395de30eff6ebccde5d")
        expect(response["docs"].count).to be(873)
        expect(response).to be_a(Hash)
      end
    end
  end
end
