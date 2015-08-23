Rails.application.routes.draw do

  devise_for :users
  root to: "pickyposts#index"

  get("/find", :controller => "find", :action => "index")



  get   '/login', :to => 'sessions#new', :as => :login
  get '/auth/:provider/callback', :to => 'sessions#create'
  get '/auth/failure', :to => 'sessions#failure'
  get '/logout', :to => 'sessions#destroy'

end
