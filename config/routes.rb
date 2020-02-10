Rails.application.routes.draw do
  root 'users#new'
  # get 'users/create'
  # get 'users/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :attractions
  resources :rides


end
