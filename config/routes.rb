Rails.application.routes.draw do
  resources :possible_matches
  resources :sightings
  resources :lost_pets
  resources :users
  post '/login', to: 'auth#create'
end
