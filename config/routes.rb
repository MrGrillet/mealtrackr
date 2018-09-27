Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations"}
  root 'marketing#index'
  get 'dashboard', to: 'meals#index'
  get 'welcome', to: 'users#welcome'
  resources :meals
  resources :foods
  resources :users
  resources :food_categories, :path => '/food-categories'
end
