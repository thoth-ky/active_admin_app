Rails.application.routes.draw do
  resources :articles
  devise_for :users, ActiveAdmin::Devise.config
  root to: "articles#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
