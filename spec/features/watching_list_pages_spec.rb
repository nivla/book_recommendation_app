require "rails_helper"

feature "Watching Lists Page" do
  scenario "listing all entries" do
    build_entry_list("Best Romance", list_size: 5)

    visit lists_path

    expect(page).to have_css("h1", text: "Best Romance")
    expect(page).to have_css("li.book", count: 5)
  end

  scenario "must show max 10 books per list" do
    build_entry_list("Best Romance", list_size: 11)

    visit lists_path

    expect(page).to have_css("h1", text: "Best Romance")
    expect(page).to have_css("li.book", count: 10)
  end

  def build_entry_list(entry_name, options = { list_size: 5 })
    entry_list  = create(:list, name: entry_name)
    create_list(:book, options[:list_size]).each do |book|
      create(:list_entry, list: entry_list, book: book)
    end
  end
end
