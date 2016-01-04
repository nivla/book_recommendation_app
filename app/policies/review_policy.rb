class ReviewPolicy
  attr_reader :reviewers, :reviewer

  def initialize(reviewers, reviewer_to_auth)
    @reviewers = reviewers
    @reviewer = reviewer_to_auth
  end

  def authorized_for_review?
    reviewer_is_logged_in? && has_not_already_reviewer?
  end

  def reviewer_is_logged_in?
    @reviewer.present?
  end

  def has_not_already_reviewer?
    !@reviewers.include? @reviewer
  end
end
