Rails.application.routes.draw do
  resources :favorite_reviews
  resources :order_items
  resources :orders
  resources :products
  resources :users
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
