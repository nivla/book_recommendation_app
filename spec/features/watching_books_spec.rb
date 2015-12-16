require "rails_helper"

feature "Watching page books" do
  scenario "visiting books path" do
    create_list(:book, 6)

    visit books_path

    expect(page).to have_css("li.book", count: 6)
  end
end
