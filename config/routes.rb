Rails.application.routes.draw do
  
  root :to => 'pages#home'


  resources :journals 
  resources :photos
  
  resources :users, :only => [:new, :index, :create]
  get '/signup', to: 'users#new'

  get '/signin' => 'session#new'
  post '/signin' => 'session#create'
  delete 'signin' => 'session#destroy'
  

end
