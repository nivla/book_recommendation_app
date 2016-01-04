class ReviewsController < ApplicationController
  def create
    review = Review.new(review_param)
    if review.save
      redirect_to book, notice: "Your review has been creating!"
    else
      redirect_to book, alert: "Something went wrong! :("
    end
  end

  private

  def review_param
    params.require(:review)
      .permit(:score, :content)
      .merge(book: book, user: current_user)
  end

  def book
    @book ||=Book.find params[:book_id]
  end
end
