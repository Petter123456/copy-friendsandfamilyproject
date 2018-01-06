Rails.application.routes.draw do

  root 'sessions#new'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'user#new'
  post '/signup' => 'user#create'

  get '/products' => 'products#index'

  resources :reviews
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
