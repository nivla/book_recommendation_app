class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :book

  validates :user_id, :book_id, :content, :score, presence: true
end
