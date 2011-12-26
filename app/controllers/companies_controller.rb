class CompaniesController < ApplicationController

  def show
    @title = " - azienda"
    @home_class = "first"
    @azienda_class = "current_page_item"
    @breadcrumbs = "home > azienda"
  end

end
