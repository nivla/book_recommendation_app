Rails.application.routes.draw do
  root "home#index"

  resource :session, only: [:new, :create, :destroy]
  resource :registration, only: [:new, :create]
  resources :authors, only: [:index, :show]
  resources :books, only: [:index, :show]
  resources :lists, only: [:index, :show]
  resources :genres, only: [:show]
end
