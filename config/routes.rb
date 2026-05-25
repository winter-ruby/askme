Rails.application.routes.draw do
  root to: 'questions#index'

  resources :questions
  resource :session, only: %i[new create destroy]

  resources :users, only: %i[new create edit update destroy]

  get "up" => "rails/health#show", as: :rails_health_check


end
