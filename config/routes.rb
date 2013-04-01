Mmr::Application.routes.draw do
  root to: 'home#index'

  resources :routes

  resources :locations

  devise_for :users
end
