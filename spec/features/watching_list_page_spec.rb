require "rails_helper"

feature "Viewing individual list" do
  scenario "must show title list and its books" do
    list = build_list(name: "Best Horrors", size: 5)
    visit list_path(list)

    expect(page).to have_css("h1", text: "Best Horrors")
    expect(page).to have_css("li.book", count: 5)
  end

  def build_list(name:, size:)
    list = create(:list, name: name)
    create_list(:book, size).each do |book|
      create(:list_entry, list: list, book: book)
    end

    list
  end
end
