Rails.application.routes.draw do
  resources :felveszems

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "felveszems#index"
end
