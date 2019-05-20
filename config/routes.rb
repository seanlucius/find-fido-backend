Rails.application.routes.draw do
  resources :possible_matches
  resources :sightings
  resources :lost_pets
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
