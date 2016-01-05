require "rails_helper"

feature "Watching book page" do
  before(:each) do
    @book = create(:book, title: "The It")
    visit books_path
  end

  scenario "can see summary of a  book" do
    click_link @book.title

    expect(page).to have_content(@book.summary)
  end

  scenario "can see reviews of books if it have" do
    user = create(:user)
    create_list(:review, 3, book: @book, user: user)

    click_link @book.title

    expect(page).to have_content("Reviews")
    expect(page).to have_css("li.review", count: 3)
  end
end
