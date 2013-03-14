Mmr::Application.routes.draw do
  root to: 'home#index'

  resources :routes

  resources :trips

  resources :locations

  devise_for :users
end
