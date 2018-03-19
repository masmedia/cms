Rails.application.routes.draw do

  # Root route
  root :to => 'public#index'

  get 'show/:permalink', :to =>'public#show', :as => 'public_show'

  get 'admin', :to => 'access#menu'  # Added route for admin area
  # Since there is no model related to this model, treating it like 
  # a resourceful route but adding match route instead is OK.
  get 'access/menu'
  get 'access/login'
  post 'access/attempt_login'
  get 'access/logout'

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

  resources :admin_users, :except => [:show] do
    member do
      get :delete
    end
  end

  # Match route
  get 'demo/index'  # Longer version is below
  # match "demo/index", :to => "demo#index", :via => :get
  get 'demo/hello'
  get 'demo/other_hello'
  get 'demo/lynda'
  get 'demo/escape_output'


  # Default route
  # get ':controller(/:action(/:id))'  # Longer version is below
  # match ":controller(/:action(/:id))", :via => :get


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
