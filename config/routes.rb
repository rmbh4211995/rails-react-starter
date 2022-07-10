# require 'sidekiq/web'

Rails.application.routes.draw do
  # mount Sidekiq::Web in app
  # mount Sidekiq::Web => "/sidekiq"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  root "home#index"

  # React UI
  get '/frontend' => 'frontend#index'

  get '/frontend/ruby' => 'frontend#ruby'

  resources :jobs
  
  # CRUD operations for Joke model
  resources :jokes do
    # nested resource, implies a hierarchical relationship / db association
    # CRUD operations for Comment model
    resources :comments
  end

  namespace :api do
    resources :jokes, :comments
  end
end
