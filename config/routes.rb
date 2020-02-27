Rails.application.routes.draw do
  devise_for :users


  resources :roles
  resources :rooms
  resources :amenity_rooms
  resources :amenities
  resources :cities
 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "rooms#index"
end
