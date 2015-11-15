class Author < ActiveRecord::Base
  has_many :books,dependent: :destroy

  validates :full_name, presence: true, uniqueness: true
  validates :gender, presence: true
  validates :born, presence: true

  def popular_books(limit = 5)
    books.limit(limit)
  end
end
