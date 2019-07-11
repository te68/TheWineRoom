Rails.application.routes.draw do
  post "/carts/:id", to: "carts#update"
  post "/checkout", to: "carts#checkout"
  resources :cart_wines
  resources :carts
  post "/reviews/:id/new", to: "reviews#new"

  resources :reviews, only: [:index, :create, :edit, :update, :delete]
  resources :wines
  resources :users

  #sessions routes
  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
