Rails.application.routes.draw do
  get 'static/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/") to the static#index controller action
  root 'static#index'

  # Defines the route to the greetings#index controller action
  namespace :api do
    namespace :v1 do
      resources :greetings, only: [:index]
    end
  end
end
