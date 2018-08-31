Rails.application.routes.draw do
  get 'cities/index'
  get 'cities/show'
  get 'trips/new'
  get 'trips/create'
  get 'trips/edit'
  get 'trips/update'
  get 'trips/destroy'
  get 'trips/index'
  get 'trips/show'
  get 'users/new'
  get 'users/create'
  get 'users/edit'
  get 'users/update'
  get 'users/destroy'
  get 'users/index'
  get 'users/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
