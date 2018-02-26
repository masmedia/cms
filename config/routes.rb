Rails.application.routes.draw do
  
  get 'subjects/index'

  get 'subjects/show'

  get 'subjects/new'

  get 'subjects/edit'

  get 'subjects/delete'

  # Root route
  root 'demo#index'

  # Match route
  get 'demo/index'  # Longer version is below
  # match "demo/index", :to => "demo#index", :via => :get
  get 'demo/hello'
  get 'demo/other_hello'
  get 'demo/lynda'


  # Default route
  # get ':controller(/:action(/:id))'  # Longer version is below
  # match ":controller(/:action(/:id))", :via => :get


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
