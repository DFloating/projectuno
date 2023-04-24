Rails.application.routes.draw do
  root :to => 'pages#home'
  resources :users, :only => [:new, :index, :create]
  get '/signup', to: 'users#new'
  

end
