Rails.application.routes.draw do
  devise_for :users
  root 'places#index'
  resources :places do
    resources :comments, only: :create
    resources :photos, only: :create
  end
  resources :users, only: [:show] do
    resources :avatars, only: [:create]
    resources :avatars, only: [:destroy]
end 
end

