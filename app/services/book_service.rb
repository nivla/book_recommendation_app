class BookService
  attr_reader :books, :genres

  def initialize(books:, genres: Genre.all)
    @books = books
    @genres = genres
  end
end
