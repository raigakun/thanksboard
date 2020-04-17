Rails.application.routes.draw do
  root 'home#index'

  resources :messages, only: [:index]
  resources :videoes, only: [:index]
end
