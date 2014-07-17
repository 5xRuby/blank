Rails.application.routes.draw do
  root 'pages#index'
  get :about, :index, :contact, controller: :pages
  resources :products
end
