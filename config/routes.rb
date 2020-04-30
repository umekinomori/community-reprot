Rails.application.routes.draw do
  
  devise_for :users
  root to: 'relationships#show'
  resources :relationships, only: [:create, :destroy, :show]

  mount ActionCable.server => '/cable'
end
