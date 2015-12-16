Rails.application.routes.draw do
  root "authors#index"

  resources :authors, only: [:index, :show]
  resources :books, only: [:index]
  resources :lists, only: [:index, :show]
  resources :genres, only: [:show]
end
