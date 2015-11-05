class Author < ActiveRecord::Base
  has_many :books,dependent: :destroy

  validates :full_name,presence: true
  validates :full_name, uniqueness: true
  validates :gender, presence: true
  validates :born, presence: true
end
