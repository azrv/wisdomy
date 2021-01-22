Rails.application.routes.draw do
  root to: 'quotes#index'
  resources :authors
  resources :quotes
  resources :users

  namespace :api do
    resources :quotes, only: [:index]
    resources :users, only: %i[index create show update]
    post 'user_token' => 'user_token#create'
  end
end
