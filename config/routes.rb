Rails.application.routes.draw do
  devise_for :users
  root 'static_pages#index'
  namespace :instructor do
    resources :courses, only: [:new, :create, :show]
  resources :users, only: [:show]
end
end
