require 'rails_helper'

describe ListEntry, type: :model do
  it { should belong_to(:book) }
  it { should belong_to(:list) }
  it { should validate_presence_of(:list_id) }
  it { should validate_presence_of(:book_id) }
end
