Rails.application.routes.draw do
  get 'photos/index'
  get 'photos/new'
  get 'photos/edit'
  get 'photos/show'
  get 'journals/index'
  get 'journals/new'
  get 'journals/edit'
  get 'journals/show'
  root :to => 'pages#home'
  resources :users, :only => [:new, :index, :create]
  get '/signup', to: 'users#new'
  

end
