Rails.application.routes.draw do
  
  resources :artist_instruments
  resources :artists, only: [:show, :index, :new, :create, :destroy]

  # delete "/artists/:id", to: "artists#destroy"

  post "artists/delete/:id", to: 'artists#super_destroy', as: "super_destroy"

  # resources :artist_instruments
end
