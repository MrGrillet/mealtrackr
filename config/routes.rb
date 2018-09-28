Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations"}
  root 'marketing#index'
  get 'dashboard', to: 'users#dashboard'
  get 'welcome', to: 'users#welcome'
  resources :meals
  resources :foods
  resources :users
  resources :food_categories, :path => '/food-categories'
  resources :feelings
  resources :liquids
  resources :liquid_categories, :path => '/liquid-categories'
end
