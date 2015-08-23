Rails.application.routes.draw do

  # Routes for the Authhash resource:
  # CREATE
  get "/authhashes/new", :controller => "authhashes", :action => "new"
  post "/create_authhash", :controller => "authhashes", :action => "create"

  # READ
  get "/authhashes", :controller => "authhashes", :action => "index"
  get "/authhashes/:id", :controller => "authhashes", :action => "show"

  # UPDATE
  get "/authhashes/:id/edit", :controller => "authhashes", :action => "edit"
  post "/update_authhash/:id", :controller => "authhashes", :action => "update"

  # DELETE
  get "/delete_authhash/:id", :controller => "authhashes", :action => "destroy"
  #------------------------------

  devise_for :users
  root to: "pickyposts#index"

  get("/find", :controller => "find", :action => "index")



  get   '/login', :to => 'sessions#new', :as => :login
  get '/auth/:provider/callback', :to => 'sessions#create'
  get '/auth/failure', :to => 'sessions#failure'

end
