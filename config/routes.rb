Rails.application.routes.draw do
  get 'users/index'
  devise_for :users
  resources :users, only: [:index, :destroy]
  root to: "homes#top"
end
