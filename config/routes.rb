Rails.application.routes.draw do
  devise_for :users
  root 'toppages#show'
  resources :users, only: [:index, :show]
  resources :messages, only: [:create]
  resources :rooms, only: [:create, :show]
  resources :relationships, only: [:create, :destroy, :show, :edit]
  resources :communities, only: [:new, :create, :index]
  post 'follow/:id' => 'relationships#follow', as: 'follow'
  post 'unfollow/:id' => 'relationships#unfollow', as: 'unfollow'
  mount ActionCable.server => '/cable'
end
