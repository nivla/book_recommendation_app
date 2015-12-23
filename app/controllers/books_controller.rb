class BooksController < ApplicationController
  def index
    @book_service = BookService.new(
      books: Book.all
    )
  end

  def show
    @book = Book.includes(:author)
      .joins(:author)
      .find(params[:id])
  end
end
