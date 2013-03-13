Mmr::Application.routes.draw do
  resources :routes

  resources :trips

  resources :locations

  devise_for :users

  root :to => "home#index"
end
