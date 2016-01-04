class Book < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: [:slugged, :finders]

  belongs_to :author
  belongs_to :genre
  has_many :reviews

  validates :title, presence: true
  validates :cover_image, presence: true
  validates :summary, presence: true
  validates :author_id, presence: true
  validates :genre_id, presence: true

  def self.by_genre(genre)
    where("genre_id = ? ", genre)
  end

  def self.lastest_published
    order(created_at: :desc)
  end

  def reviewers
    reviews.map(&:user)
  end
end
