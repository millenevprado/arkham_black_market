Rails.application.routes.draw do
  get 'evil_artifacts/index'
  devise_for :users
  root to: 'pages#home'
  resources :evil_artifacts, only: :index do
    resources :orders, only: :create
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
