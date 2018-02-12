Rails.application.routes.draw do
  
  # Root route
  root 'demo#index'

  # Match route
  get 'demo/index'  # Longer version is below
  # match "demo/index", :to => "demo#index", :via => :get
  get 'demo/hello'



  # Default route
  # get ':controller(/:action(/:id))'  # Longer version is below
  # match ":controller(/:action(/:id))", :via => :get


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
