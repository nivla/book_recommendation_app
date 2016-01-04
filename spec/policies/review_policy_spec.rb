require_relative "../../app/policies/review_policy"

RSpec.describe ReviewPolicy do

  describe "#authorize_for_review?" do

    it "returns true if user hasn't written a review yet" do
      reviewer = double("user", present?: true)
      reviews = []

      valid_authorization = ReviewPolicy.new(reviews, reviewer)
        .authorized_for_review?

      expect(valid_authorization).to eq true
    end

    it "returns false if is not signed in" do
      reviewer = double("user", present?: false)
      reviews = []

      valid_authorization = ReviewPolicy.new(reviews, reviewer)
        .authorized_for_review?

      expect(valid_authorization).to eq false
    end

    it "returns false if reviewer has written a review for the book" do
      reviewer = double("user", present?: true)
      reviews = [reviewer]

      valid_authorization = ReviewPolicy.new(reviews, reviewer)
        .authorized_for_review?

      expect(valid_authorization).to eq false
    end
  end
end
