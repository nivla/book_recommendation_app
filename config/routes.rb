Rails.application.routes.draw do
  resources :authors, only: [:index, :show]
  resources :lists, only: [:index]
end
