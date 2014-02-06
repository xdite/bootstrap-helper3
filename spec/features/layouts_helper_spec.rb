require "spec_helper"

feature "LayoutsHelper" do
  scenario "render_page_title" do
    visit root_path

    expect(page).to have_title("Welcome | Dummy")
  end

  scenario "render_body_tag" do
    visit root_path

    expect(page).to have_css("body#welcome-page.pages-controller.welcome-action")
  end

  scenario "notice_message" do
    visit root_path

    expect(page).to have_css(".alert", :count => 2)
  end
end
