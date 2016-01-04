require "rails_helper"

feature "User writing review" do
  scenario "if he hasn't writing a review yet" do
    login_as create(:user)

    visit book_path create(:book)

    within("#new_review") do
      select "3", from: "Score"
      fill_in "Review", with: "Awesome Book"
      click_button "Send review"
    end

    expect(page).to have_review("Awesome Book")
  end

  def have_review(content)
    have_css "li.review", text: content
  end
end
