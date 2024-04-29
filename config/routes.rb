Rails.application.routes.draw do
  devise_for :users
  root "movies#index"
  
  resources :movies
  resources :users 
  resources :cinemas
  resources :shows
end
