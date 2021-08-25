Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :evil_artifacts do
    collection do
      get "/category/:category", to: "evil_artifacts#artifacts_of_a_category", as: 'artifacts_of_a_category'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
