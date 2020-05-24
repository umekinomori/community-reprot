Rails.application.routes.draw do
  devise_for :users
  root 'toppages#show'
  resources :users, only: [:index, :show, :edit, :update] do 
    resources :messages, only: [:index, :create,]
  end
  resources :groups, only: [:create, :show, :edit, :new]
  resources :relationships, only: [:create, :destroy, :show, :edit]
  

  post 'follow/:id' => 'relationships#follow', as: 'follow'
  post 'unfollow/:id' => 'relationships#unfollow', as: 'unfollow'
  mount ActionCable.server => '/cable'
end
