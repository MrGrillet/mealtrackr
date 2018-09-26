Rails.application.routes.draw do
  devise_for :users
  root 'marketing#index'
  get 'dashboard', to: 'meals#index'
  get 'welcome', to: 'users#welcome'
  resources :meals
  resources :foods
  resources :users

end
