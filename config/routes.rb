Rails.application.routes.draw do

  devise_for :users
  root to: "pickyposts#index"

  get("/find", :controller => "find", :action => "index")

  get '/auth/:provider', to: 'sessions#create'

  get '/auth/:provider/callback', to: 'sessions#create'

end
