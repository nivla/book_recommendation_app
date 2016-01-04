require 'rails_helper'

describe Book, type: :model do
  it { should belong_to(:author) }
  it { should belong_to(:genre) }

  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:cover_image) }
  it { should validate_presence_of(:summary) }
  it { should validate_presence_of(:author_id)}
  it { should validate_presence_of(:genre_id)}

  describe "#by_genre" do
    it "list all books belongs to a specific genre" do
      romance = create(:genre, name: "Romance")
      horror = create(:genre, name: "Horror")
      create(:book, title: "The it", genre: romance)
      create(:book, title: "Rollling deep", genre: horror)

      books = Book.by_genre(romance)

      expect(books.map(&:title)).to eq ["The it"]
    end
  end

  describe "#find" do
    it "should find a book by slug title" do
      book = create(:book, title: 'The book')

      result = Book.find("the-book")

      expect(result).to eq book
    end
  end

  describe "#lastest_published" do
    it "return lastest books published" do
      book = create(:book, created_at: 1.hour.ago)
      book2 = create(:book, created_at: 1.minute.ago)

      lastest_published = Book.lastest_published

      expect(lastest_published).to eq [book2, book]
    end
  end

  describe "#reviewers" do
    it "returns users who have written a review for the book" do
      book = create(:book, title: "GreenWitch")
      reviewer_1 = create(:user)
      reviewer_2 = create(:user)
      create(:review, book: book, user: reviewer_1)
      create(:review, book: book, user: reviewer_2)

      reviewers = book.reviewers

      expect(reviewers).to eq [reviewer_1, reviewer_2]
    end
  end
end
