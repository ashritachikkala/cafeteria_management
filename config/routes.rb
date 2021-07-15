Rails.application.routes.draw do
  resources :carts
  resources :cart_items
  get "/" => "home#index"
  #resources :order_items
  #resources :orders
  
  
  get "/signin" => "sessions#new", as: :new_sessions
  post "/signin" => "sessions#create", as: :sessions
  delete "/signout" => "sessions#destroy", as: :destroy_session
  resources :menu_items
  #resources :menu_categories
  resources :users
end
