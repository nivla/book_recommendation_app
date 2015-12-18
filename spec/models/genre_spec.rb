require 'rails_helper'

describe Genre, type: :model do
  it { should validate_presence_of(:name) }

  it { should validate_uniqueness_of(:name) }

  describe "#find" do
    it "shoudl find genre by slug name" do
      romance = create(:genre, name: "Romance")

      genre = Genre.find("romance")

      expect(genre).to eq romance
    end
  end
end
