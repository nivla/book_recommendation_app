require_relative "../../app/models/guest"

RSpec.describe Guest do
  describe "#present?" do
    it "returns false" do
      expect(Guest.new.present?).to eq false
    end
  end

  describe "#authenticate" do
    it "return false" do
      expect(Guest.new.authenticate("")).to eq false
    end
  end
end
