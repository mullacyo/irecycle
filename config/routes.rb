Rails.application.routes.draw do
  get 'rewards/index'
  root 'welcome#index'

  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :trucks

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
end
