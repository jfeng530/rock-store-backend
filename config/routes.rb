Rails.application.routes.draw do
  resources :purchases
  resources :orders
  resources :rocks
  resources :users
  resources :login, only: [:create]
end
