class BooksController < ApplicationController
  def index
    @book_service = BookService.new(
      books: Book.all
    )
  end

  def show
    @book = Book.find params[:id]
  end
end
