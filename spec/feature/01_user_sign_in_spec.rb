require 'rails_helper'

feature "User signs in" do
  let(:user) do
    User.create(
      provider: "github",
      uid: "1",
      username: "jarlax1",
      avatar_url: "https://avatars2.githubusercontent.com/u/174825?v=3&s=400"
    )
  end
  before :each do
    visit '/'
    sign_in_as user
  end

  scenario "successful sign in" do
    expect(page).to have_content "#{user.username}"
  end

  scenario "successful sign out" do
    click_button "mdl-menu__item"
    click_link "Sign Out"

    expect(page).to have_content "You have been signed out"
  end
end
