Rails.application.routes.draw do
  root to: 'products#index'
  get 'products/index'
  get 'pages/home'

  devise_for :users

  resources :profiles, only: [:new, :edit, :create, :update]
  resources :products
end
