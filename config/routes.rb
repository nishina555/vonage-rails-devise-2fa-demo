Rails.application.routes.draw do
  devise_for :users
  resources :verifications, only: [:edit, :update]

  root to: 'kittens#index'
end
