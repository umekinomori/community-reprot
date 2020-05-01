Rails.application.routes.draw do
  devise_for :users
  root to: 'toppages#show'
  resources :users, onlsy: [:show]do
    resources :groups, only: [:show, :edit]
    resources :relationships, only: [:create, :destroy, :show, :edit]
    post 'follow/:id' => 'relationships#follow', as: 'follow'
    post 'unfollow/:id' => 'relationships#unfollow', as: 'unfollow'
  mount ActionCable.server => '/cable'
  end
end
