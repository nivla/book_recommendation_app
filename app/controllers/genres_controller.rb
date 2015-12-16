class GenresController < ApplicationController
  def show
    @book_service = BookService.new(
      books: Book.by_genre(genre)
    )
    render template: "books/index"
  end

  private

  def genre
    Genre.find(params[:id])
  end
end
