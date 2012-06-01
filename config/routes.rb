Dyc::Application.routes.draw do
  
  root :to => 'events#index'
  
  resources :events 
  resources :artists, only: [:index, :show]
  resources :users 
  resources :deals 
  resources :movies
  
  get "login" => "sessions#new", :as => "log_in"
  post "login" => "sessions#create", :as => "create"
  
  get "logout" => "sessions#destroy", :as => "log_out"
end
