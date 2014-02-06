require "spec_helper"

feature "Navigation" do
  scenario "visiting root path" do
    visit root_path

    expect(page).to have_content("Pages#welcome")
  end
end
