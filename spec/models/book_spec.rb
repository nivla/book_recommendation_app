require 'rails_helper'

describe Book, type: :model do
  it { should belong_to(:author) }
  it { should belong_to(:genre) }

  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:cover_image) }
  it { should validate_presence_of(:summary) }
  it { should validate_presence_of(:author_id)}
  it { should validate_presence_of(:genre_id)}
end
