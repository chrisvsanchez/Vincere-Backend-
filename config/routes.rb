Rails.application.routes.draw do
  resources :sign_up_for_events
  resources :events
  resources :order_items
  resources :items
  resources :orders
  resources :users, only:[:index, :show, :create, :destroy, :update]
  post "/login", to: "users#login"
  get "/autologin/:id", to: "users#autologin"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
