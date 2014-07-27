Rails.application.routes.draw do
  devise_for :users
  root 'pages#index'
  get :about, :contact, controller: :pages
  resources :products, :categories
end
