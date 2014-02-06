class PagesController < ApplicationController
  def welcome
    @page_title = "Welcome"
    @body_id = "welcome"
  end
end
