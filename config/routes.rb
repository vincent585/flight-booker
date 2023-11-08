Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :flights, only: %i[index]
  resources :bookings, only: %i[show new create]

  root 'flights#index'
end
