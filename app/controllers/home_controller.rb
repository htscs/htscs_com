class HomeController < ApplicationController

  def show
    @title = " - home page"
    @home_class = "first current_page_item"
    @breadcrumbs = "home"
  end

  def work_in_progress
    @title = " - work in progress"
    @home_class = "first current_page_item"
    @breadcrumbs = "home > work in progress"
  end

end
