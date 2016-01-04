require 'rails_helper'

RSpec.describe Review, type: :model do
  it { should validate_presence_of :user_id }
  it { should validate_presence_of :book_id }
  it { should validate_presence_of :content }
  it { should validate_presence_of :score }
end
