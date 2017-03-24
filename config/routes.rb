Rails.application.routes.draw do
  root to: 'products#index'
  get 'products/index'
  get 'pages/home'

  post ":product_id/add" => "shopping_cart#create", as: :add_to_cart

  devise_for :users

  resources :profiles, only: [:new, :edit, :create, :update]
  resources :products
end
