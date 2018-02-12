Rails.application.routes.draw do
  
  # Root route
  root 'demo#index'

  get 'demo/index'  # Shorter form of "Match route". Longer one is below
  # match "demo/index", :to => "demo#index", :via => :get

  # get ':controller(/:action(/:id))'  # Default route. Longer version is below
  # match ":controller(/:action(/:id))", :via => :get


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
