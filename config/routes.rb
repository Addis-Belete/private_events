Rails.application.routes.draw do
  devise_for :users
  root to: "users#index"
  resources :users, :require, only: [:show]
  resources :events, :require, only: [:new, :create, :index, :show]
  resources :events do
    post 'attend', :user
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
