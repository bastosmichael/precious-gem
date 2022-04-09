# frozen_string_literal: true

RSpec.describe Precious::API::V2::Books do
  context "#get_books" do
    it "GET a payload of books" do
      VCR.use_cassette("get_books") do
        response = Precious::API::V2::Books.new.get_books
        expect(response).to be_a(Hash)
      end
    end

    it "GET a payload of book with id" do
      VCR.use_cassette("get_book") do
        response = Precious::API::V2::Books.new.get_book(id: "5cf5805fb53e011a64671582")
        expect(response).to be_a(Hash)
      end
    end

    it "GET a payload of book chapters with id" do
      VCR.use_cassette("get_book_chapters") do
        response = Precious::API::V2::Books.new.get_book_chapters(id: "5cf5805fb53e011a64671582")
        expect(response).to be_a(Hash)
      end
    end
  end
end
