Rails.application.routes.draw do
  root 'static_pages#home'
  resources :users do
    resources :trips
  end
  resources :countries
  resources :cities

  get '/signin', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
  post '/users/new', to: 'users#create'
  get '/logout', to: 'sessions#destroy'
  get '/auth/facebook/callback' => 'sessions#create_oath'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
