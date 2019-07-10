Rails.application.routes.draw do
  post "/carts/:id", to: "carts#update"
  resources :cart_wines
  resources :carts
  resources :reviews
  resources :wines
  resources :users

  #sessions routes
  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
