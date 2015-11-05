class List < ActiveRecord::Base
  has_many :list_entries,class_name:'ListEntry'
  has_many :books,through: :list_entries

  validates :name, presence: true
  validates :name,uniqueness: true
end
