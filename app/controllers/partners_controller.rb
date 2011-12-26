class PartnersController < ApplicationController

  def index
    @title = " - partners"
    @home_class = "first"
    @partners_class = "current_page_item"
    @breadcrumbs = "home > partners"
  end

end
