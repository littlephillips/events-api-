Rails.application.routes.draw do
  resources :engagements
  resources :reviews
  resources :bookings
  resources :events
  resources :admins
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
