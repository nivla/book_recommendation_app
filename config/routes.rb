Rails.application.routes.draw do
  root "authors#index"

  resources :authors, only: [:index, :show]
  resources :lists, only: [:index, :show]
end
