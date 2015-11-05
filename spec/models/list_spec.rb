require 'rails_helper'

describe List, type: :model do
  it { should have_many(:books) }
  it { should validate_presence_of(:name) }

  it { should validate_uniqueness_of(:name) }
end
