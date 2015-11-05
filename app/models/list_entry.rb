class ListEntry < ActiveRecord::Base
  belongs_to :book
  belongs_to :list

  validates :list_id, presence: true
  validates :book_id, presence: true
end
