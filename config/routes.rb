Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  root "jokes#index"

  # CRUD operations for Joke model
  resources :jokes do
    # nested resource, implies a hierarchical relationship / db association
    # CRUD operations for Comment model
    resources :comments
  end
end
