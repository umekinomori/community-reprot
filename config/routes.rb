Rails.application.routes.draw do
  get 'users/edit'
  devise_for :users
  root to: 'relationships#show'
  resources :users, only: [:show]do
    resources :groups, only: [:show :edit]
    resources :relationships, only: [:create, :destroy, :show, :edit]

  mount ActionCable.server => '/cable'
  end
end
