Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get "/admin" => "devise/sessions#new"
  end
    
  get 'servicedienst', to: "servicedienst#index"
  get 'renovationen', to: 'renovationen#index'
  get 'antennen', to: "antenne#index"
  get 'wasser', to: "wasser#index"
  get 'vorhang', to: "vorhang#index"
  get 'lampen', to: "lampen#index"
  get 'netzwerk', to: "netzwerk#index"
  get 'service', to: "service#index"
  get 'installator', to: "installator#index"
  get 'moebel', to: "mobel#index"
  get 'fliesen', to: "fliesen#index"
  get 'boden', to: "boden#index"
  get 'trockenbau', to: "trockenbau#index"
  get 'elektro', to: "elektro#index"
  get 'planung', to: "planung#index"
  get "haushalt", to: 'haushaltservice#index'
  root 'home#index'
  post "lampen", to: "lampen#create"
  resources :felveszems

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
 
end
