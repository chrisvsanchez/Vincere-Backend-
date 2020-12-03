Rails.application.routes.draw do
  # resources :charges
  # post "/charges", to: "charges#create"
  resources :sign_up_for_events
  resources :events
  resources :order_items
  resources :items
  resources :orders
  resources :users, only: [:create]
  post "/login", to: "users#login"
  get "/autologin", to: "users#autologin"
  # post "/charges", to: "charges#create"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
