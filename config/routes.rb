Rails.application.routes.draw do
  devise_for :users
  root 'home#index'

  resources :messages,  only: [:new, :create] do
    resources :likes, only: :create
  end
  
  resources :producers,  only: :index
  
end
