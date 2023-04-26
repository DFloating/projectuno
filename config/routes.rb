Rails.application.routes.draw do
  root :to => 'pages#home'
  # get 'photos/index'
  # get 'photos/new'
  # get 'photos/edit'
  # get 'photos/show'
  # get 'journals/index' => 'journals#index'
  # get 'journals/new'=> 'journals#new'
  # post 'journals/new' => 'journals#create'
  # get 'journals/edit'=> ''
  # get 'journals/show'

  resources :journals 
  resources :photos
  
  resources :users, :only => [:new, :index, :create]
  get '/signup', to: 'users#new'
  

end
