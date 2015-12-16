class BooksController < ApplicationController
  def index
    @book_service = BookService.new(
      books: Book.all
    )
  end
end
