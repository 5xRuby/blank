Rails.application.routes.draw do
  devise_for :users
  root 'pages#index'
  get :about, :index, :contact, controller: :pages
  resources :products
end
