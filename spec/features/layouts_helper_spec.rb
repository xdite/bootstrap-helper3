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

    expect(page).to have_css("div.alert", :count => 2)
  end

  scenario "ibutton" do
    visit root_path

    expect(page).to have_css("a.btn.btn-primary[href='/'] i.glyphicon.glyphicon-home")
    expect(page).to have_css("a.btn.btn-primary[href='/'] span")
  end

  scenario "will_paginate" do
    visit root_path

    expect(page).to have_css("ul.pagination li.active")
    expect(page).to have_css("ul.pagination li.disabled")
  end
end
