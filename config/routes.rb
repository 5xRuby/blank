Rails.application.routes.draw do
  root 'pages#index'
  devise_for :users
  get :about, :contact, controller: :pages
  resource :cart, only: %i[show destroy]
  resources :orders, only: %i[index create show]
  resources :products, :categories
  resources :line_items, only: %i[create update destroy]
end
