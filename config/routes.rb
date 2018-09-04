Rails.application.routes.draw do
  root 'static_pages#home'
  resources :users
  resources :trips do
    resources :countries do
      resources :cities
    end
  end

  get '/signin', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
  post '/users/new', to: 'users#create'
  delete '/logout', to: 'sessions#destroy'
  get '/auth/facebook/callback' => 'sessions#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
