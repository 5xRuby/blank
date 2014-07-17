Rails.application.routes.draw do
  root 'pages#index'
  controller :pages do
    get :about
    get :index
  end
end
