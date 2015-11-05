require 'rails_helper'
describe Author, type: :model do
  it { should have_many(:books).dependent(:destroy) }

  it { should validate_presence_of(:full_name)}
  it { should validate_presence_of(:gender)}
  it { should validate_presence_of(:born)}

  it { should validate_uniqueness_of(:full_name)}
end
