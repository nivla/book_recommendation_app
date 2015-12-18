require "rails_helper"
describe Author, type: :model do
  it { should have_many(:books).dependent(:destroy) }

  it { should validate_presence_of(:full_name)}
  it { should validate_presence_of(:gender)}
  it { should validate_presence_of(:born)}

  it { should validate_uniqueness_of(:full_name)}

  describe "#popular_books" do
    it "show 5 of his books" do
      author = create(:author)
      create_list(:book, 6, author: author, genre: create(:genre))
      expect(author.popular_books.count).to eq 5
    end
  end

  describe "#find" do
    it "should find author buy slug name" do
      author = create(:author, full_name: "Stephen King")

      result = Author.find("stephen-king")

      expect(result).to eq author
    end
  end
end
