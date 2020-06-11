Rails.application.routes.draw do
  resources :artist_instruments
  resources :artists, only: [:show, :index, :new, :create]
  
end
