require "rails_helper"

feature "paginate books" do
  scenario "less than 1 page" do
    create_list(:book, 3)

    visit books_path

    expect(page).to have_displayed_books(3)
  end

  scenario "more than 1 page" do
    create_list(:book, 22)

    visit books_path

    expect(page).to have_displayed_books(20)
  end

  scenario "click next page of books" do
    create_list(:book, 22)

    visit books_path
    click_link "Next"

    expect(page).to have_displayed_books(2)
  end

  def have_displayed_books(count)
    have_css(".book", count: count)
  end
end
