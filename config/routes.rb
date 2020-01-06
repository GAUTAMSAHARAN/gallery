Rails.application.routes.draw do
  get 'sessions/new'
  get "upload"=>"images#new", :as => "upload"
  get 'images/create'
  get 'images/destroy'
  get 'images/index'
  get 'catogries/new'
  get 'catogries/create'
  get 'catogries/destroy'
  get 'catogries/show'
  get 'catogries/update'
  get 'catogries/edit' 
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :images, :categories, :users
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "images#index"
end
