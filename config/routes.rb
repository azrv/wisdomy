Rails.application.routes.draw do
  resources :users

  namespace :api do
    resources :quotes, only: [:index]
    resources :users, only: %i[index create show update]
    post 'user_token' => 'user_token#create'
  end
end
