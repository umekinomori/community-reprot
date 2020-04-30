Rails.application.routes.draw do
  devise_for :users
  root to: 'relationships#show'
  resources :relationships, only: [:create, :destroy]

  mount ActionCable.server => '/cable'
end
