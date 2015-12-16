require "rails_helper"

describe BookService do
  it "retrieve books and genres" do
    books = double("books")
    genres = double("genres")
    allow(BookService).to receive(:books).and_return(books)
    allow(BookService).to receive(:genres).and_return(genres)

    book_service = BookService.new(books: books, genres: genres)

    expect(book_service.books).to eq books
    expect(book_service.genres).to eq genres
  end
end
