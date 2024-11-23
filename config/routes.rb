Rails.application.routes.draw do
  resources :posts do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create, :destroy]
  end
  get 'users/index'
  devise_for :users
  resources :users, only: [:index, :destroy]
  root to: "homes#top"
end
