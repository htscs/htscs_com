class DownloadsController < ApplicationController
  before_filter :authenticate, :only => [:index, :edit, :update, :destroy]
  before_filter :correct_user, :only => [:edit, :update]

  def index
    @title = "Download"
    @home_class = "first"
    @download_class = "current_page_item"
    @breadcrumbs = "home > download"
    
    user_id = session[:cur_user_id]      
    if user_id.nil? 
      user_id = 1
    end 
  
    @user = User.find(user_id)    
  end

  private #----------------

  def authenticate
    redirect_to signin_path, 
                :flash => { :notice => "please sign in" } unless signed_in?
  end 

  def correct_user
    user = User.find(session[:cur_user_id])
    redirect_to(root_path) if current_user != user
  end


end
