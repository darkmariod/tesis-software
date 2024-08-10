Rails.application.routes.draw do
  root "home#index"

  resources :products
  resources :categories
  resources :clients
  # Otras rutas
end
