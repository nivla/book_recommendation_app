require "rails_helper"

feature "User try sign in to the page" do
  scenario "when successfull" do
    login_as create(:user)

    expect(current_path).to eq books_path
    expect(page).to have_link 'Logout'
  end
end
