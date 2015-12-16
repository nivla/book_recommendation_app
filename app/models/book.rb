class Book < ActiveRecord::Base
  belongs_to :author
  belongs_to :genre

  validates :title, presence: true
  validates :cover_image, presence: true
  validates :summary, presence: true
  validates :author_id, presence: true
  validates :genre_id, presence: true

  def self.by_genre(genre)
    where("genre_id = ? ", genre)
  end
end
