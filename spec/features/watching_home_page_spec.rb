require "rails_helper"

feature "user watching home page" do
  scenario "it must see a list of the lastest published books" do
    create_list(:book, 4)

    visit root_path

    expect(page).to have_list_of_books
  end

  scenario "it must se a list of authors that we have" do
    create_list(:author, 4)

    visit root_path

    expect(page).to have_list_of_authors
  end

  def have_list_of_books
    have_css(".lastest-books li", count: 4)
  end

  def have_list_of_authors
    have_css(".best-authors li", count: 4)
  end
end
