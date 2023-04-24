Rails.application.routes.draw do
  root :to => 'pages#home'
  resources :users, :only => [:new, :index, :create]

  root 'welcome#index'
  get '/signup', to: 'users#new'
  # post '/signup', to: 'users#create'

end
