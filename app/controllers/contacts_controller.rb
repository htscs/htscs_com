class ContactsController < ApplicationController

  def new
    @title = " - contatti"
    @home_class = "first"
    @contatti_class = "current_page_item"
    @breadcrumbs = "home > contatti"
    # id is required to deal with form
    @contact = Contact.new(:id => 1)
  end

  def create
    @contact = Contact.new(params[:contact])
    if @contact.save
      #redirect_to root_path, :flash => { :succes => "Messaggio da Contact was successfully sent."}
      flash[:success] = "Messaggio inviato con successo"
      render 'new'
    else
      flash[:alert] = "Devi riempire tutti i campi."
      render 'new'
    end
  end

end
