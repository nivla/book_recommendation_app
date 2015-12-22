require "rails_helper"

feature "Watching book page" do
  scenario "view a particular book" do
    book = create(:book, title: "The It")
    visit books_path

    click_link book.title

    expect(page).to have_content("Reviews")
    expect(page).to have_content(book.summary)
  end
end
