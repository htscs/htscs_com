HtscsCom::Application.routes.draw do
  
  get "downloads/index"

  root :to => "home#show"

  resources :users
  resources :sessions, :only => [:new, :create, :destroy]  
  resources :supports, :only => [:new, :create]
  resources :contacts, :only => [:new, :create]

  match "/home",                        :to => "home#show"
  match "/work_in_progress",            :to => "home#work_in_progress"
  match "/partners",                    :to => "partners#index"
  match "/prodotti",                    :to => "products#index"
  match "/prodotti_atmedia_infoguard",  :to => "products#show_atmedia_infoguard"
  match "/prodotti_chameleon",          :to => "products#show_chameleon"
  match "/prodotti_hopf",               :to => "products#show_hopf"
  match "/prodotti_ifs9000",            :to => "products#show_ifs9000"
  match "/prodotti_shunra",             :to => "products#show_shunra"
  match "/prodotti_visara",             :to => "products#show_visara"
  match "/soluzioni_crittografia",      :to => "solutions#show_encryption"
  match "/soluzioni_infrastruttura",    :to => "solutions#show_infrastruttura"
  match "/soluzioni_mainframe_open",    :to => "solutions#show_main_open"
  match "/soluzioni_rete_locale_geo",   :to => "solutions#show_rete_locale_geo"
  match "/azienda",                     :to => "companies#show"
  match "/contatti",                    :to => "contacts#new"
  match "/supporto",                    :to => "supports#new"
  match "/download",                    :to => "downloads#index"
  
  match "/signup",                      :to => "users#new"
  match "/signin",                      :to => "sessions#new"
  match "/signout",                     :to => "sessions#destroy"  


  #  resources :xxxs
  #
  # HTTP  | URL         | Action   | Named route     | Purpose
  # -----------------------------------------------------------------------------
  # GET     /xxxs/new     new        new_xxx_path      page to make a new xxx
  #
  # POST    /xxxs         create     xxxs_path          create a new xxx
  #
  # GET     /xxxs         index      xxxs_path         page to list all xxx
  #
  # GET     /xxxs/1       show       xxx_path(1)       page to show xxx with ID 1
  #
  # GET     /xxxs/1/edit  edit       edit_xxx_path(1)  page to edit xxx with ID 1
  #
  # PUT     /xxxs/1       update     xxx_path(1)       update xxx with ID 1
  #
  # DELETE  /xxxs/1       destroy    xxx_path(1)       delete xxx with ID 1
end
