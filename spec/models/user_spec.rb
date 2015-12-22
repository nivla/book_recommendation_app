require 'rails_helper'

RSpec.describe User, type: :model do
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:name)}
  it { should validate_presence_of(:password) }

  it "validates uniquenes of email"do
    create :user
    should validate_uniqueness_of(:email)
  end

  describe "#authenticate" do
    context "valid user" do
      it "returns user" do
        user = create(:user,
                      email: "user@example.com",
                      password: "userpassword")

        result = user.authenticate("userpassword")

        expect(result).to eq user
      end
    end

    context "invalid user" do
      it "returns false" do
        user = create(:user,
                      email: "user@example.com",
                      password: "userpassword")

        result = user.authenticate("invalid")

        expect(result).to eq false
      end
    end
  end
end
