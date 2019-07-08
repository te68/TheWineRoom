Rails.application.routes.draw do
  resources :cart_wines
  resources :carts
  resources :reviews
  resources :wines
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
