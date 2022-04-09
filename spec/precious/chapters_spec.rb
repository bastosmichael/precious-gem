# frozen_string_literal: true

RSpec.describe Precious::API::V2::Chapters do
  context "#chapters" do
    it "GET a payload of chapters" do
      VCR.use_cassette("get_chapters") do
        response = described_class.new(API_KEY).get_chapters
        expect(response).to be_a(Hash)
      end
    end

    it "GET a payload of chapter with id" do
      VCR.use_cassette("get_chapter") do
        response = described_class.new(API_KEY).get_chapter(id: "6091b6d6d58360f988133bc4")
        expect(response).to be_a(Hash)
      end
    end
  end
end
