Rails.application.routes.draw do
  devise_for :users
  root 'open#index'

  resources :messages,  only: [:new, :create] do
    resources :likes, only: :create
  end
  
  resources :producers,  only: :index
  resources :home,  only: :index
  
end
