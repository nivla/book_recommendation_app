class BooksController < ApplicationController
  def index
    @book_service = BookService.new(
      books: Book.page(params[:page])
    )
  end

  def show
    book = Book.includes(:author, :reviews)
      .joins(:author)
      .find(params[:id])

    render locals: {
      book: book,
      reviews: book.reviews,
      review_policy: ReviewPolicy.new(book.reviewers, current_user)
    }
  end
end
