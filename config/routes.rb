Rails.application.routes.draw do
  resources :plans
  resources :periods
  resources :expenses
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'static_pages/home'
  root to: 'static_pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
