class HomeController < ApplicationController
  def index
    render locals: {
      genres: Genre.all,
      books: Book.lastest_published.limit(5),
      authors: Author.all
    }
  end
end
