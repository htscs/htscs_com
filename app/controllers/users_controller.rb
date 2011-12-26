class UsersController < ApplicationController
  before_filter :authenticate, :only => [:index, :edit, :update, :destroy]
  before_filter :correct_user, :only => [:edit, :update]
  before_filter :admin_user,   :only => [:destroy]

  def index
    @title = "All users"
    #@users = User.all
    @users = User.paginate :page => params[:page], :order => 'created_at DESC', :per_page => 6
  end

  def new
    @user = User.new
    @title = "Signup"
  end

  def create
    #raise params[:user].inspect
    @user = User.new(params[:user])
    if @user.save
      #tratto utente salvato
      sign_in @user
      redirect_to user_path(@user.id),
                  :flash => { :success => "Welcome to the sample app! ciao"}
    else
      # mostro errori con partial shared/error_messages
      @title = "Signup"
      render "new"
    end
  end

  def show
    @user = User.find(params[:id])
    session[:cur_user_id] = @user.id
    
    #@user = User.find(2)
    #redirect_to download_path(:user_id => @user.id) 
    redirect_to download_path 
    #@title = @user.name
  end

  def edit
    #@user = current_user #funziona ma non l'ha usato.
    @user = User.find(params[:id])
    @title = "Edit user"
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      # It worked. User updated
      redirect_to user_path(@user.id),
                  :flash => { :success => "Dati aggiornati"}
    else
      # It failed.
      @title = "Edit user"
      render 'edit'
    end
  end

  def destroy
    User.find(params[:id]).destroy
    redirect_to users_path, :flash => { :succes => "Utente eliminato! Era impreparato."}
  end

  private #----------------

   def authenticate
     redirect_to signin_path, 
                 :flash => { :notice => "please sign in" } unless signed_in?
   end 

   def correct_user
     user = User.find(params[:id])
     redirect_to(root_path) if current_user != user
   end

   def admin_user
     user = User.find(params[:id])
     redirect_to(root_path) if !current_user.admin? || current_user == user
   end

end
