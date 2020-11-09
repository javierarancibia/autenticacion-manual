Rails.application.routes.draw do
  resources :stories
  resources :users, only: [:new, :create, :show]
  resources :sessions, only: [:new, :create, :destroy] 
  get 'users/sign_up', to: 'users#new', as: 'sign_up'
  post 'users', to: 'users#create'
  get 'users/sign_in', to: 'sessions#new', as: 'sign_in'

  root 'stories#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
