Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :evil_artifacts, only: :index do
    collection do
      get "/:category", to: "evil_artifacts#category", as: 'artifacts_of_a_category'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
