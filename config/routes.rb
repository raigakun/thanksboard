Rails.application.routes.draw do
  devise_for :users
  root 'home#index'

  resources :messages,  only: [:new, :create, :show,  :edit, :destroy] 
  # do
  #   resources :likes, only: [:create, :destroy]
  # end
  # namespace :admin do
  #   resources :messages, only: [:index, :new, :create, :show,  :edit, :destroy]
  # end

  # post "likes/:message_id/create", to: "likes#create", constraints: {message_id: /\d+/}, as: :likes_create
  # post "likes/:message_id/delete", to: "likes#delete", constraints: {message_id: /\d+/}, as: :likes_delete
end
