require "rails_helper"

feature "normal or guess user watching authors page" do
  scenario "must show max 5 of his books" do
    stephen = create(:author,full_name: "Stephen King")
    create_list(:book, 6, author: stephen, genre: create(:genre))

    visit authors_path

    expect(page).to have_content stephen.full_name
    expect(page).to have_css(".author__book", count: 5)
  end
end

