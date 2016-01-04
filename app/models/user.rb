class User < ActiveRecord::Base
  has_secure_password

  has_many :reviews

  validates :email, :name, presence: true
  validates :email, uniqueness: true
end
