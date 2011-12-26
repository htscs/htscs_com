class SupportsController < ApplicationController

  def new
    # id is required to deal with form
    @support = Support.new(:id => 1)
    @title = " - supporto" 
    @home_class = "first"
    @prodotti_class = "current_page_item"
    @breadcrumbs = "home > soluzioni > supporto"
  end

  def create
    @support = Support.new(params[:support])
    if @support.save
      redirect_to root_path, :flash => { :succes => "Support was successfully sent."}
    else
      flash[:alert] = "You must fill all fields."
      render 'new'
    end
  end

end
