Rails.application.routes.draw do
  resources :pokemons
  resources :artworks
  resources :artists
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
