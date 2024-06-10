Rails.application.routes.draw do
  get 'lampen',to : "lampen#index"
  resources :felveszems

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "lampen#index"
end
