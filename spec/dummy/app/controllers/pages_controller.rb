class PagesController < ApplicationController
  def welcome
    @page_title = "Welcome"
    @body_id = "welcome"

    flash[:notice] = "Success message."
    flash[:alert] = "Error message."
  end
end
