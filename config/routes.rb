Rails.application.routes.draw do
  devise_for :users
  root 'toppages#show'
  resources :users, only: [:show, :edit, :update]
  resources :messages, only: :show
  resources :groups, only: [:show, :edit]
  resources :relationships, only: [:create, :destroy, :show, :edit]
  post 'follow/:id' => 'relationships#follow', as: 'follow'
  post 'unfollow/:id' => 'relationships#unfollow', as: 'unfollow'
  mount ActionCable.server => '/cable'
end
