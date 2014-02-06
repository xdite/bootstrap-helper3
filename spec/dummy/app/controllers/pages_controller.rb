require "will_paginate/array"

class PagesController < ApplicationController
  def welcome
    @user = User.new(:name => "John Smith", :email => "john@example.com", :is_admin => true)

    @items = (1..1000).to_a.paginate(:page => params[:page], :per_page => 10)

    @page_title = "Welcome"
    @body_id = "welcome"

    flash[:notice] = "Success message."
    flash[:alert] = "Error message."
  end
end
