Dyc::Application.routes.draw do
  get "users/index"

  root :to => 'events#index'
  resources :events 
  resources :artists, only: [:index, :show]
  resources :users 
  resources :deals 
end
