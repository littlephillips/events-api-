Rails.application.routes.draw do
  resources :engagements, only: [:index, :create, :destroy]
  resources :reviews, only: [:index, :create]
  resources :bookings, only: [:index, :create, :destroy]
  resources :events
  resources :admins, only: [:index, :create, :update, :destroy]
end
