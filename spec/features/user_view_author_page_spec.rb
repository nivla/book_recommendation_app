require "rails_helper"

feature "user views author page" do
  scenario "can see author info" do
    author = create(:author)
    visit author_path(author)

    expect(page).to have_css(".author-info")
    expect(page).to have_content(author.bio)
    expect(page).to have_content(author.full_name)
    expect(page).to have_author_picture(author)
  end

  scenario "can see all his books" do
    author = create(:author)
    horror = create(:genre, name: "Horror")
    create_list(:book, 3, author: author, genre: horror)

    visit author_path(author)

    expect(page).to have_css(".author__books li", count: 3)
  end

  def have_author_picture(author)
    have_xpath("//img[contains(@src,\"#{author.picture}\")]")
  end
end
