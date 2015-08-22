Rails.application.routes.draw do

  devise_for :users
  root to: "pickyposts#index"

  get("/find", :controller => "find", :action => "index")

end
