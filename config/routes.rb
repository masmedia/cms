Rails.application.routes.draw do

  # Root route
  root 'demo#index'

  # Resourceful routes
  resources :subjects do
    member do
      get :delete   # Add eighth CRUD action which is :delete
    end    
  end

  resources :pages do
    member do
      get :delete   # Add eighth CRUD action which is :delete
    end    
  end

  resources :sections do
    member do
      get :delete   # Add eighth CRUD action which is :delete
    end    
  end

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
