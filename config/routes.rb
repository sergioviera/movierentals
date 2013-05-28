Movierentals::Application.routes.draw do
  devise_for :users

  resources :movies
  resources :rentals
  
  root :to => 'movies#new'
end
