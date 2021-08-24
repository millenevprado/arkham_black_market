Rails.application.routes.draw do
  get 'evil_artifacts/index'
  devise_for :users
  root to: 'pages#home'
  resources :evil_artifacts, only: :index
  resources :orders, only: [:new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
