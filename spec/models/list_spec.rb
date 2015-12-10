require 'rails_helper'

describe List, type: :model do
  it { should have_many(:books) }
  it { should validate_presence_of(:name) }

  it { should validate_uniqueness_of(:name) }

  describe "#ranking_books" do
    it "display top 5-10 ranking books" do
      list = build_list(size: 10)
      expect(list.ranking_books.size).to eq 10
    end
  end

  def build_list(size:)
    best_romance = create(:list, name: "Best Romance")
    books = create_list(:book, size)
    books.each do |book|
      create(:list_entry, list: best_romance, book: book)
    end
    best_romance
  end
end
